module TPPlus
  class Scanner
    def initialize
    end

    attr_reader :lineno, :col
    attr_reader :tok_line, :tok_col
    def scan_setup(src)
      @src = src
      @lineno = 1
      @ch = " "
      @offset = 0
      @col = 0
      @rdOffset = 0
      @prevDot = false # for groups

      @tok_line = 0
      @tok_col = 0

      self.next
    end

    def next
      if @rdOffset < @src.length
        @offset = @rdOffset
        @ch = @src[@rdOffset]
        if @ch == "\n"
          @lineno += 1
          @col = 0
        end
        @rdOffset += 1
        @col += 1
      else
        @offset = @src.length
        @ch = -1
      end
    end

    def prev
      if @offset > 0
        @offset -= 1
        @ch = @src[@offset]
        if @ch == "\n"
          @lineno -= 1
          @col = 0
        end
        @rdOffset -= 1
        @col -= 1
      else
        @offset = 0
        @ch = 0
      end
    end

    def isDigit?(ch)
      return false if ch == -1

      case ch
      when '0','1','2','3','4','5','6','7','8','9'
        return true
      else
        return false
      end
    end

    def isLetter?(ch)
      return false if ch == -1

      case ch
      when 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
           'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
           '_'
        return true
      else
        return false
      end
    end

    def skipWhitespace
      while @ch == ' ' || @ch == "\t" || @ch == "\r"
        self.next
      end
    end

    def scanIdentifier
      offs = @offset
      while isLetter?(@ch) || isDigit?(@ch)
        self.next
      end

      # allow one ? or ! at end
      if @ch == '?' || @ch == '!'
        self.next
      end

      return @src[offs,(@offset-offs)]
    end

    def scanReal
      offs = @offset-1
      while self.isDigit?(@ch)
        self.next
      end

      return [:REAL, @src[offs,(@offset-offs)].to_f]
    end

    def scanNumber
      offs = @offset
      while self.isDigit?(@ch)
        self.next
      end
      if @ch == '.'
        self.next
        if self.isDigit?(@ch)
          while self.isDigit?(@ch)
            self.next
          end
          return [:REAL, @src[offs,(@offset-offs)].to_f]
        else
          self.prev
          return [:DIGIT, @src[offs,(@offset-offs)].to_i]
        end
      else
        return [:DIGIT, @src[offs,(@offset-offs)].to_i]
      end
    end

    def scanComment
      offs = @offset-1 # opening # already consumed
      while @ch != "\n" && @ch != -1
        self.next
      end

      return @src[offs,(@offset-offs)]
    end

    def scanString(type)
      offs = @offset
      while @ch != type && @ch != -1
        self.next
      end

      # consume close
      self.next

      return @src[offs, (@offset-offs-1)] # -1 to remove trailing " or '
    end

    def scanLabel
      offs = @offset
      while self.isLetter?(@ch) || isDigit?(@ch)
        self.next
      end

      return @src[offs, (@offset-offs)]
    end

    # return token
    def next_token
      self.skipWhitespace

      @tok_line = @lineno
      @tok_col = @col

      tok = nil
      lit = ""
      ch = @ch

      if isLetter?(ch)
        lit = self.scanIdentifier
        if @ch == '['
          tok = TPPlus::Token.lookup_data(lit)
        elsif lit == "DIV"
          tok = :DIV
        else
          # keywords are longer than 1 char, avoid lookup otherwise
          if lit.length > 1
            if @prevDot
              case lit
              when "gp1","gp2","gp3","gp4","gp5"
                tok = :GROUP
              else
                tok = TPPlus::Token.lookup(lit)
              end
            else
              tok = TPPlus::Token.lookup(lit)
            end
          else
            tok = :WORD
          end
        end
      elsif isDigit?(ch)
        tok, lit = self.scanNumber
      else
        self.next # always make progress
        case ch
        when -1
          return nil
        when '='
          if @ch == '='
            tok = :EEQUAL
            self.next
          else
            tok = :EQUAL
          end
        when ':'
          if @ch == "="
            tok = :ASSIGN
            self.next
          else
            tok = :COLON
          end
        when "<"
          if @ch == "="
            tok = :LTE
            self.next
          elsif @ch == ">"
            tok = :NOTEQUAL
            self.next
          else
            tok = :LT
          end
        when ">"
          if @ch == "="
            tok = :GTE
            self.next
          else
            tok = :GT
          end
        when "+"
          tok = :PLUS
        when "-"
          if @ch == ">"
            tok = :ARROW
            self.next
          else
            tok = :MINUS
          end
        when "*"
          tok = :STAR
        when "/"
          if @ch == "/"
            tok = :DIV
            self.next
          else
            tok = :SLASH
          end
        when "&"
          if @ch == "&"
            tok = :AND
            self.next
          elsif isLetter?(@ch)
            tok = :ADDRESS
          else
            tok = :ILLEGAL
          end
        when "|"
          if @ch == "|"
            tok = :OR
            self.next
          else
            tok = :ILLEGAL
          end
        when "%"
          tok = :MOD
        when ";"
          tok = :SEMICOLON
        when "."
          if @ch == "."
            tok = :RANGE
            self.next
          elsif self.isDigit?(@ch)
            tok, lit = self.scanReal
          else
            tok = :DOT
          end
        when "!"
          if @ch == "="
            tok = :NOTEQUAL
            self.next
          else
            tok = :BANG
          end
        when "\"", "'"
          tok = :STRING
          lit = self.scanString(ch)
        when "#"
          tok = :COMMENT
          lit = self.scanComment
        when "@"
          tok = :LABEL
          lit = self.scanLabel
        when '('
          tok = :LPAREN
        when ')'
          tok = :RPAREN
        when ','
          tok = :COMMA
        when '['
          tok = :LBRACK
        when ']'
          tok = :RBRACK
        when '{'
          tok = :LBRACE
        when '}'
          tok = :RBRACE
        when "\n"
          tok = :NEWLINE
        when '$'
          tok = :SYSTEM
        else
          tok = :ILLEGAL
          lit = ch
        end
      end

      if tok == :DOT
        @prevDot = true
      else
        @prevDot = false
      end

      return [tok, lit]
    end
  end

  class ScanError < StandardError ; end
end
