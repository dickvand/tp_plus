#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.10
# from Racc grammer file "".
#

require 'racc/parser.rb'
module TPPlus
  class Parser < Racc::Parser


  include TPPlus::Nodes

  attr_reader :interpreter
  def initialize(scanner, interpreter = TPPlus::Interpreter.new)
    @scanner       = scanner
    @interpreter   = interpreter
    super()
  end

  def next_token
    t = @scanner.next_token
    @interpreter.line_count += 1 if t && t[0] == :NEWLINE

    #puts t.inspect
    t
  end

  def parse
    do_parse
    @interpreter
  rescue Racc::ParseError => e
    raise "Parse error on line #{@interpreter.line_count+1}: #{e}"
  end
##### State transition tables begin ###

racc_action_table = [
    51,    28,    30,    22,    21,    22,    22,    40,   191,    21,
    38,    37,    40,    27,    52,    28,    30,    22,    21,   126,
    31,    30,   192,    20,   126,   159,   159,    27,   159,   130,
    28,    30,    22,    21,    31,   182,   131,    20,    30,    31,
    23,   191,    27,    24,    17,    18,   123,    19,    25,    31,
    50,   122,    20,    30,    23,   192,    31,    24,    17,    18,
   121,    19,    25,    28,    30,    22,    21,   120,    30,    23,
    30,    31,    24,    17,    18,    27,    19,    25,    28,    30,
    22,    21,    31,    86,    85,    20,    31,    62,    31,    28,
    27,    22,    21,    76,    77,    63,    64,    31,   114,    78,
    20,    27,    23,   135,   145,    24,    17,    18,   136,    19,
    25,    20,   130,   137,    38,    37,    40,    23,    38,    37,
    24,    17,    18,   138,    19,    25,    45,   -47,    23,   139,
   -47,    24,    17,    18,   140,    19,    25,    38,    37,    40,
    38,    37,    40,    38,    37,    40,    38,    37,    40,    45,
    58,   -48,    45,    59,   -48,    45,   118,   119,    45,    70,
    71,    74,    75,    72,    73,    76,    77,    38,    37,    40,
   113,    78,    38,    37,    40,    38,    37,    40,   142,    45,
    38,    37,    40,   -49,    45,   108,   -49,    45,    38,    37,
    40,   108,    45,    38,    37,    40,   149,   175,   150,   151,
    45,   172,   173,   174,   152,    45,   101,    99,   100,    97,
   153,    98,    80,    81,    82,    84,   154,    83,    80,    81,
    82,    84,   155,    83,    38,    37,    40,    38,    37,    40,
    38,    37,    40,    38,    37,    40,    38,    37,    40,    38,
    37,    40,   108,   108,   124,   103,   102,   164,    50,    52,
    67,   169,   169,   108,    65,   176,   177,   178,   179,    61,
    60,    40,    40,   189,    54,   193,   194,   195,   196,    40,
    33,   201 ]

racc_action_check = [
    20,     4,     4,     4,     4,   156,   157,   149,   181,   196,
   176,   176,   176,     4,    20,    55,    55,    55,    55,   105,
     4,   160,   181,     4,   106,   156,   157,    55,   196,   107,
     0,     0,     0,     0,    55,   176,   111,    55,   163,   160,
     4,   193,     0,     4,     4,     4,   100,     4,     4,     0,
    20,    99,     0,    35,    55,   193,   163,    55,    55,    55,
    98,    55,    55,   126,   126,   126,   126,    97,     2,     0,
   104,    35,     0,     0,     0,   126,     0,     0,    56,    56,
    56,    56,   126,    45,    45,   126,     2,    29,   104,    34,
    56,    34,    34,   115,   115,    29,    29,    56,    64,   115,
    56,    34,   126,   120,   128,   126,   126,   126,   121,   126,
   126,    34,   128,   122,    23,    23,    23,    56,    17,    17,
    56,    56,    56,   123,    56,    56,    23,     8,    34,   124,
     8,    34,    34,    34,   125,    34,    34,    58,    58,    58,
    62,    62,    62,    24,    24,    24,   114,   114,   114,    58,
    26,     6,    62,    26,     6,    24,    87,    87,   114,    41,
    41,    41,    41,    41,    41,    41,    41,   113,   113,   113,
    63,    41,    68,    68,    68,    18,    18,    18,   127,   113,
    69,    69,    69,     9,    68,    60,     9,    18,    79,    79,
    79,    57,    69,    59,    59,    59,   131,   171,   135,   136,
    79,   171,   171,   171,   137,    59,    51,    51,    51,    51,
   138,    51,   116,   116,   116,   116,   139,   116,    42,    42,
    42,    42,   143,    42,   177,   177,   177,   119,   119,   119,
    50,    50,    50,    19,    19,    19,   179,   179,   179,   130,
   130,   130,   145,   146,   101,    54,    52,   158,   159,    40,
    36,   164,   167,   169,    33,   172,   173,   174,   175,    28,
    27,   178,    25,   180,    22,   183,   184,   185,   186,    21,
     1,   198 ]

racc_action_pointer = [
    27,   270,    64,   nil,    -2,   nil,   109,   nil,    85,   141,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    95,   152,   210,
    -2,   244,   261,    91,   120,   237,   108,   244,   234,    61,
   nil,   nil,   nil,   254,    86,    49,   225,   nil,   nil,   nil,
   233,   131,   182,   nil,   nil,    60,   nil,   nil,   nil,   nil,
   207,   198,   221,   nil,   220,    12,    75,   169,   114,   170,
   163,   nil,   117,   144,    72,   nil,   nil,   nil,   149,   157,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   165,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   103,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    12,     5,    -4,
    -9,   189,   nil,   nil,    66,   -24,   -19,   -22,   nil,   nil,
   nil,    19,   nil,   144,   123,    59,   176,   nil,   nil,   204,
    79,    84,    89,    99,   105,    90,    60,   134,    61,   nil,
   216,   144,   nil,   nil,   nil,   142,   143,   148,   154,   160,
   nil,   nil,   nil,   178,   nil,   220,   221,   nil,   nil,   -18,
   nil,   nil,   nil,   nil,   nil,   nil,     0,     1,   194,   196,
    17,   nil,   nil,    34,   235,   nil,   nil,   236,   nil,   231,
   nil,   183,   203,   204,   205,   206,   -13,   201,   236,   213,
   210,   -19,   nil,   211,   213,   214,   214,   nil,   nil,   nil,
   nil,   nil,   nil,    14,   nil,   nil,     3,   nil,   218,   nil,
   nil,   nil ]

racc_action_default = [
    -1,  -118,    -2,    -3,    -7,   -10,   -11,   -12,   -13,   -14,
   -15,   -16,   -17,   -18,   -19,   -20,   -21,  -118,  -118,  -118,
   -76,  -118,  -118,  -118,  -118,  -118,  -118,  -118,  -118,  -118,
  -113,  -114,  -115,  -118,    -5,    -6,  -118,  -101,  -102,   -23,
   -76,   -77,   -79,   -81,   -97,  -118,  -100,   -24,   -59,   -60,
   -28,  -118,  -118,   -31,  -118,    -8,    -8,  -117,  -118,  -118,
  -117,   -70,  -118,  -118,  -118,   202,    -4,   -22,  -118,  -118,
   -83,   -84,   -85,   -86,   -87,   -88,   -89,   -90,   -91,  -118,
   -92,   -93,   -94,   -95,   -96,   -98,   -99,  -118,   -26,   -29,
   -30,   -71,  -103,  -104,  -105,  -106,  -107,  -118,  -118,  -118,
  -118,  -118,   -75,   -32,    -9,   -51,   -51,  -118,  -116,   -45,
   -46,  -118,   -72,  -118,  -118,   -78,   -80,   -82,   -25,  -118,
  -118,  -118,  -118,  -118,  -118,  -118,    -8,  -118,   -42,   -36,
  -118,  -118,   -73,   -74,   -27,  -118,  -118,  -118,  -118,  -118,
   -33,   -50,   -34,  -118,   -37,  -117,  -117,   -39,   -40,  -118,
  -108,  -109,  -110,  -111,  -112,   -35,  -118,  -118,  -118,  -118,
  -118,   -43,   -44,  -118,  -118,   -41,   -38,   -52,   -53,  -117,
   -54,  -118,  -118,  -118,  -118,  -118,  -118,  -118,  -118,  -118,
  -118,  -118,   -66,  -118,  -118,  -118,  -118,   -63,   -64,   -55,
   -65,   -68,   -69,  -118,   -56,   -57,  -118,   -67,  -118,   -61,
   -62,   -58 ]

racc_goto_table = [
    29,    47,    88,    36,    29,    48,    34,    39,   107,   105,
   106,   111,    55,    56,   161,   161,   129,   190,     2,    49,
   168,    53,    35,   170,     1,    57,   160,   163,   143,   197,
   125,   127,   162,   162,    29,   128,    89,   144,   146,    34,
    87,   167,   200,   180,   186,   198,    66,   109,   110,    91,
    90,   112,   115,    68,   199,    29,    29,   116,   117,    92,
    93,    94,    95,    96,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   134,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   141,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   156,   157,   nil,   nil,
   nil,   nil,   132,   133,   nil,    89,   nil,   nil,    34,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   147,   nil,   nil,    90,
   171,   nil,   nil,   nil,   nil,   nil,    29,   nil,   nil,   nil,
   148,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   158,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   184,
   nil,   nil,   181,    48,   165,   188,   nil,   166,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   183,    49,   185,   187 ]

racc_goto_check = [
    23,    20,    22,    18,    23,    18,     4,    19,    25,     5,
     5,    25,    19,    19,    14,    14,    28,    37,     2,    23,
    33,    23,     2,    33,     1,    23,    30,    30,    27,    37,
    24,    24,     9,     9,    23,    26,    18,    28,    29,     4,
    21,    32,    10,    34,    35,    36,     3,    19,    19,    38,
    23,    19,    39,    40,    14,    23,    23,    41,    43,    45,
    46,    47,    48,    49,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    22,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
     5,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    25,    25,   nil,   nil,
   nil,   nil,    19,    19,   nil,    18,   nil,   nil,     4,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    18,   nil,   nil,    23,
    25,   nil,   nil,   nil,   nil,   nil,    23,   nil,   nil,   nil,
    23,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    23,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    20,
   nil,   nil,    18,    18,     4,    18,   nil,     4,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    23,    23,    23,    23 ]

racc_goto_pointer = [
   nil,    24,    18,    12,     4,   -46,   nil,   nil,   nil,  -124,
  -154,   nil,   nil,   nil,  -142,   nil,   nil,   nil,   -14,   -11,
   -18,   -10,   -48,     0,   -75,   -49,   -72,  -100,   -91,   -92,
  -130,   nil,  -123,  -144,  -133,  -135,  -151,  -164,    -2,   -16,
    12,   -12,   nil,   -21,   nil,     8,     9,    10,    11,    12,
   nil ]

racc_goto_default = [
   nil,   nil,   104,     3,     4,   nil,     5,     6,     7,     8,
     9,    10,    11,    12,    13,    14,    15,    16,    44,   nil,
   nil,   nil,   nil,    46,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    26,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    41,
   nil,    42,    69,    43,    79,   nil,   nil,   nil,   nil,   nil,
    32 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 58, :_reduce_none,
  1, 58, :_reduce_2,
  1, 59, :_reduce_3,
  3, 59, :_reduce_4,
  2, 59, :_reduce_5,
  2, 59, :_reduce_6,
  1, 59, :_reduce_7,
  0, 62, :_reduce_none,
  1, 62, :_reduce_9,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  3, 73, :_reduce_22,
  2, 73, :_reduce_23,
  2, 72, :_reduce_24,
  4, 71, :_reduce_25,
  1, 78, :_reduce_26,
  3, 78, :_reduce_27,
  0, 78, :_reduce_28,
  1, 79, :_reduce_none,
  1, 79, :_reduce_none,
  2, 67, :_reduce_31,
  3, 66, :_reduce_32,
  5, 69, :_reduce_33,
  5, 69, :_reduce_34,
  6, 74, :_reduce_35,
  1, 83, :_reduce_36,
  2, 83, :_reduce_37,
  5, 85, :_reduce_38,
  1, 86, :_reduce_none,
  1, 86, :_reduce_none,
  4, 84, :_reduce_41,
  0, 84, :_reduce_none,
  1, 87, :_reduce_none,
  1, 87, :_reduce_none,
  3, 70, :_reduce_45,
  3, 70, :_reduce_46,
  1, 88, :_reduce_none,
  1, 88, :_reduce_none,
  1, 88, :_reduce_none,
  2, 81, :_reduce_50,
  0, 81, :_reduce_none,
  8, 65, :_reduce_52,
  1, 89, :_reduce_53,
  2, 89, :_reduce_54,
  6, 90, :_reduce_55,
  6, 90, :_reduce_56,
  6, 90, :_reduce_57,
  8, 90, :_reduce_58,
  1, 77, :_reduce_none,
  1, 77, :_reduce_none,
  1, 93, :_reduce_none,
  1, 93, :_reduce_none,
  1, 92, :_reduce_none,
  1, 92, :_reduce_none,
  2, 91, :_reduce_65,
  1, 91, :_reduce_66,
  3, 91, :_reduce_67,
  1, 94, :_reduce_68,
  1, 94, :_reduce_69,
  2, 68, :_reduce_70,
  3, 63, :_reduce_71,
  3, 64, :_reduce_72,
  4, 64, :_reduce_73,
  4, 64, :_reduce_74,
  3, 80, :_reduce_75,
  1, 80, :_reduce_76,
  1, 76, :_reduce_77,
  3, 76, :_reduce_78,
  1, 96, :_reduce_79,
  3, 96, :_reduce_80,
  1, 98, :_reduce_none,
  3, 98, :_reduce_82,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  1, 99, :_reduce_none,
  1, 99, :_reduce_none,
  1, 99, :_reduce_none,
  1, 101, :_reduce_none,
  1, 101, :_reduce_none,
  1, 101, :_reduce_none,
  1, 101, :_reduce_none,
  1, 101, :_reduce_none,
  1, 100, :_reduce_none,
  2, 100, :_reduce_98,
  2, 100, :_reduce_99,
  1, 100, :_reduce_none,
  1, 75, :_reduce_101,
  1, 75, :_reduce_102,
  1, 95, :_reduce_none,
  1, 95, :_reduce_none,
  1, 95, :_reduce_none,
  1, 95, :_reduce_none,
  1, 95, :_reduce_none,
  4, 106, :_reduce_108,
  4, 105, :_reduce_109,
  4, 102, :_reduce_110,
  4, 104, :_reduce_111,
  4, 103, :_reduce_112,
  1, 107, :_reduce_113,
  1, 61, :_reduce_114,
  1, 61, :_reduce_115,
  1, 82, :_reduce_116,
  0, 82, :_reduce_none ]

racc_reduce_n = 118

racc_shift_n = 202

racc_token_table = {
  false => 0,
  :error => 1,
  :ASSIGN => 2,
  :AT_SYM => 3,
  :COMMENT => 4,
  :JUMP => 5,
  :IO_METHOD => 6,
  :INPUT => 7,
  :OUTPUT => 8,
  :NUMREG => 9,
  :POSREG => 10,
  :VREG => 11,
  :SREG => 12,
  :POSITION => 13,
  :TIME_SEGMENT => 14,
  :MOVE => 15,
  :DOT => 16,
  :TO => 17,
  :AT => 18,
  :TERM => 19,
  :OFFSET => 20,
  :SEMICOLON => 21,
  :NEWLINE => 22,
  :REAL => 23,
  :DIGIT => 24,
  :WORD => 25,
  :EQUAL => 26,
  :UNITS => 27,
  :EEQUAL => 28,
  :NOTEQUAL => 29,
  :GTE => 30,
  :LTE => 31,
  :LT => 32,
  :GT => 33,
  :PLUS => 34,
  :MINUS => 35,
  :STAR => 36,
  :SLASH => 37,
  :DIV => 38,
  :AND => 39,
  :OR => 40,
  :MOD => 41,
  :IF => 42,
  :ELSE => 43,
  :END => 44,
  :UNLESS => 45,
  :WAIT_FOR => 46,
  :WAIT_UNTIL => 47,
  :MAX_SPEED => 48,
  :FANUC_USE => 49,
  :CASE => 50,
  :WHEN => 51,
  "(" => 52,
  ")" => 53,
  "," => 54,
  "[" => 55,
  "]" => 56 }

racc_nt_base = 57

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "ASSIGN",
  "AT_SYM",
  "COMMENT",
  "JUMP",
  "IO_METHOD",
  "INPUT",
  "OUTPUT",
  "NUMREG",
  "POSREG",
  "VREG",
  "SREG",
  "POSITION",
  "TIME_SEGMENT",
  "MOVE",
  "DOT",
  "TO",
  "AT",
  "TERM",
  "OFFSET",
  "SEMICOLON",
  "NEWLINE",
  "REAL",
  "DIGIT",
  "WORD",
  "EQUAL",
  "UNITS",
  "EEQUAL",
  "NOTEQUAL",
  "GTE",
  "LTE",
  "LT",
  "GT",
  "PLUS",
  "MINUS",
  "STAR",
  "SLASH",
  "DIV",
  "AND",
  "OR",
  "MOD",
  "IF",
  "ELSE",
  "END",
  "UNLESS",
  "WAIT_FOR",
  "WAIT_UNTIL",
  "MAX_SPEED",
  "FANUC_USE",
  "CASE",
  "WHEN",
  "\"(\"",
  "\")\"",
  "\",\"",
  "\"[\"",
  "\"]\"",
  "$start",
  "program",
  "statements",
  "statement",
  "terminator",
  "block",
  "definition",
  "assignment",
  "motion_statement",
  "jump",
  "io_method",
  "label_definition",
  "conditional",
  "inline_conditional",
  "program_call",
  "use_statement",
  "wait_statement",
  "case_statement",
  "number",
  "expression",
  "indirectable",
  "args",
  "arg",
  "var",
  "else_block",
  "swallow_newlines",
  "case_conditions",
  "case_else",
  "case_condition",
  "case_allowed_condition",
  "case_allowed_statement",
  "inlineable",
  "motion_modifiers",
  "motion_modifier",
  "speed",
  "time",
  "time_seg_actions",
  "units",
  "definable",
  "simple_expression",
  "relop",
  "term",
  "addop",
  "factor",
  "mulop",
  "numreg",
  "output",
  "posreg",
  "position",
  "vreg",
  "comment" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

def _reduce_2(val, _values, result)
 @interpreter.nodes = val[0].flatten 
    result
end

def _reduce_3(val, _values, result)
 result = val 
    result
end

def _reduce_4(val, _values, result)
 result = val[0] << val[1] << val[2] 
    result
end

def _reduce_5(val, _values, result)
 result = val[0] << val[1] 
    result
end

def _reduce_6(val, _values, result)
 result = [val[0]] << val[1] 
    result
end

def _reduce_7(val, _values, result)
 result = [val[0]] 
    result
end

# reduce 8 omitted

def _reduce_9(val, _values, result)
 result = val[0] 
    result
end

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

# reduce 21 omitted

def _reduce_22(val, _values, result)
 result = WaitForNode.new(val[1], val[2]) 
    result
end

def _reduce_23(val, _values, result)
 result = WaitUntilNode.new(val[1]) 
    result
end

def _reduce_24(val, _values, result)
 result = UseNode.new(val[0],val[1]) 
    result
end

def _reduce_25(val, _values, result)
 result = CallNode.new(val[0],val[2]) 
    result
end

def _reduce_26(val, _values, result)
 result = [val[0]] 
    result
end

def _reduce_27(val, _values, result)
 result = val[0] << val[2] 
    result
end

def _reduce_28(val, _values, result)
 result = [] 
    result
end

# reduce 29 omitted

# reduce 30 omitted

def _reduce_31(val, _values, result)
 result = IOMethodNode.new(val[0],val[1]) 
    result
end

def _reduce_32(val, _values, result)
 result = JumpNode.new(val[2]) 
    result
end

def _reduce_33(val, _values, result)
 result = ConditionalNode.new("if",val[1],val[2],val[3]) 
    result
end

def _reduce_34(val, _values, result)
 result = ConditionalNode.new("unless",val[1],val[2],val[3]) 
    result
end

def _reduce_35(val, _values, result)
 result = CaseNode.new(val[1],val[3],val[4]) 
    result
end

def _reduce_36(val, _values, result)
 result = val 
    result
end

def _reduce_37(val, _values, result)
 result = val[0] << val[1] << val[2] 
    result
end

def _reduce_38(val, _values, result)
 result = CaseConditionNode.new(val[1],val[3]) 
    result
end

# reduce 39 omitted

# reduce 40 omitted

def _reduce_41(val, _values, result)
 result = CaseConditionNode.new(nil,val[2]) 
    result
end

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

def _reduce_45(val, _values, result)
 result = InlineConditionalNode.new("if",val[2],val[0]) 
    result
end

def _reduce_46(val, _values, result)
 result = InlineConditionalNode.new("unless",val[2],val[0]) 
    result
end

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

def _reduce_50(val, _values, result)
 result = val[1] 
    result
end

# reduce 51 omitted

def _reduce_52(val, _values, result)
 result = MotionNode.new(val[0],val[5],val[7]) 
    result
end

def _reduce_53(val, _values, result)
 result = val 
    result
end

def _reduce_54(val, _values, result)
 result = val[0] << val[1] 
    result
end

def _reduce_55(val, _values, result)
 result = SpeedNode.new(val[4]) 
    result
end

def _reduce_56(val, _values, result)
 result = TerminationNode.new(val[4]) 
    result
end

def _reduce_57(val, _values, result)
 result = OffsetNode.new(val[4]) 
    result
end

def _reduce_58(val, _values, result)
 result = TimeNode.new(val[2],val[4],val[6]) 
    result
end

# reduce 59 omitted

# reduce 60 omitted

# reduce 61 omitted

# reduce 62 omitted

# reduce 63 omitted

# reduce 64 omitted

def _reduce_65(val, _values, result)
 result = [val[0],val[1]] 
    result
end

def _reduce_66(val, _values, result)
 result = [:max_speed,:max_speed] 
    result
end

def _reduce_67(val, _values, result)
 result = [val[0],val[2]] 
    result
end

def _reduce_68(val, _values, result)
 result = UnitsNode.new(val[0]) 
    result
end

def _reduce_69(val, _values, result)
 result = UnitsNode.new(val[0]) 
    result
end

def _reduce_70(val, _values, result)
 result = LabelDefinitionNode.new(val[1]) 
    result
end

def _reduce_71(val, _values, result)
 result = DefinitionNode.new(val[0],val[2]) 
    result
end

def _reduce_72(val, _values, result)
 result = AssignmentNode.new(val[0],val[2]) 
    result
end

def _reduce_73(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_74(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_75(val, _values, result)
 result = VarMethodNode.new(val[0],val[2]) 
    result
end

def _reduce_76(val, _values, result)
 result = VarNode.new(val[0]) 
    result
end

def _reduce_77(val, _values, result)
 result = val[0] 
    result
end

def _reduce_78(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

def _reduce_79(val, _values, result)
 result = val[0] 
    result
end

def _reduce_80(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 81 omitted

def _reduce_82(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 83 omitted

# reduce 84 omitted

# reduce 85 omitted

# reduce 86 omitted

# reduce 87 omitted

# reduce 88 omitted

# reduce 89 omitted

# reduce 90 omitted

# reduce 91 omitted

# reduce 92 omitted

# reduce 93 omitted

# reduce 94 omitted

# reduce 95 omitted

# reduce 96 omitted

# reduce 97 omitted

def _reduce_98(val, _values, result)
 result = DigitNode.new(val[0].to_i * -1) 
    result
end

def _reduce_99(val, _values, result)
 result = RealNode.new(val[0].to_f * -1) 
    result
end

# reduce 100 omitted

def _reduce_101(val, _values, result)
 result = DigitNode.new(val[0]) 
    result
end

def _reduce_102(val, _values, result)
 result = RealNode.new(val[0]) 
    result
end

# reduce 103 omitted

# reduce 104 omitted

# reduce 105 omitted

# reduce 106 omitted

# reduce 107 omitted

def _reduce_108(val, _values, result)
 result = VisionRegisterNode.new(val[2].to_i) 
    result
end

def _reduce_109(val, _values, result)
 result = PositionNode.new(val[2].to_i) 
    result
end

def _reduce_110(val, _values, result)
 result = NumregNode.new(val[2].to_i) 
    result
end

def _reduce_111(val, _values, result)
 result = PosregNode.new(val[2].to_i) 
    result
end

def _reduce_112(val, _values, result)
 result = IONode.new(val[0], val[2].to_i) 
    result
end

def _reduce_113(val, _values, result)
 result = CommentNode.new(val[0]) 
    result
end

def _reduce_114(val, _values, result)
 result = TerminatorNode.new 
    result
end

def _reduce_115(val, _values, result)
 result = val[0] 
    result
end

def _reduce_116(val, _values, result)
 result = TerminatorNode.new 
    result
end

# reduce 117 omitted

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module TPPlus
