module TPPlus
  module Nodes
    class NumregNode < RegNode
      attr_accessor :comment
      attr_reader :id
      def initialize(id)
        @id = id
        @comment = ""
      end

      def requires_mixed_logic?(context)
        false
      end

      def comment_string
        return "" if @comment == ""

        ":#{@comment}"
      end

      def eval(context,options={})
        "R[#{@id}#{comment_string}]"
      end
    end
  end
end
