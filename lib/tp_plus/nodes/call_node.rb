module TPPlus
  module Nodes
    class CallNode
      attr_reader :args
      def initialize(program_name, args)
        @program_name = program_name
        @args = args
      end

      def args_string(context)
        return "" unless @args.any?

        "(" + @args.map {|a| a.eval(context) }.join(",") + ")"
      end

      def eval(context)
        "CALL #{@program_name.upcase}#{args_string(context)}"
      end
    end
  end
end