### Module --------------------------------

module Tools
    # to make public
    module_function
    def sayHi(name)
        puts "Hi #{name}"
    end
    
    def sayBye(name)
        puts "Bye #{name}"
    end

    # private
    private
    def greet(name)
        puts "Greetings #{name}"
    end
end
