# your code here
class Stack
    def initialize(limit=-1)
        @stack = []
        @limit = limit
    end

    def push(value)
        if @stack.size != @limit
            @stack.push(value)
        else 
            raise "Stack Overflow"
        end
    end
    
    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.size
    end

    def empty?
        @stack.empty?
    end

    def full?
        @stack.size == @limit
    end

    def search(value)
        @stack.include?(value) ? 
            (@stack.size - 1) - @stack.find_index(value)
            :
            -1
    end
end