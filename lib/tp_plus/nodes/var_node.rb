module TPPlus
  module Nodes
    class VarNode
      attr_reader :identifier
      def initialize(identifier)
        @identifier = identifier
      end

      def target_node(context)
        constant? ? context.get_constant(@identifier) : context.get_var(@identifier)
      end

      def constant?
        @identifier.upcase == @identifier
      end

      def requires_mixed_logic?(context)
        target_node(context).is_a?(IONode) && target_node(context).requires_mixed_logic?(context)
      end

      def with_parens(s, options)
        return s unless options[:as_condition]

        "(#{s})"
      end

      def eval(context,options={})
        return target_node(context).eval(context) if constant?

        s = ""
        if options[:opposite]
          s += "!"
        end
        with_parens(s + target_node(context).eval(context), options)
      end
    end
  end
end
