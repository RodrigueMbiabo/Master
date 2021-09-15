class Calculation < ApplicationRecord

    OPERANDS = ['+', '-', '*', '/']


    belongs_to :category


    validates :argument1, :argument2, :operand,
        presence: true
    validates :operand, inclusion: {in: OPERANDS}

    def frontend_title

        title.presence || "#{argument1} #{operand} #{argument2}"


    end

    def result
        case operand
        when '+' then argument1 + argument2
        when '-' then argument1 - argument2
        when '*' then argument1 * argument2
        when '/' then 
        else "dunno!"
        end

    end
end
