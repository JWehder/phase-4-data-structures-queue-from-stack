require_relative './stack'

# your code here
class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        @s1.push(value)
    end

    def remove
        # find out which stack is empty
        # add the elements from the stack with elements to the empty stack
        # pop off the last element
        until @s1.empty? do
            @s2.push(@s1.pop)
        end
        first = @s2.pop
        first
    end

    def peek
        until @s1.empty?
            @s2.push(@s1.pop)
        end

        @s2.peek
    end




end
