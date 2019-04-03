<<<<<<< HEAD
require 'pry'
=======
# your code goes here
require 'pry'
# your code goes here
>>>>>>> 9d2dd897c0565d766a8b0b18a166bdf5dfa182af
class Person
    # attr_reader :name
    # attr_accessor :balance, :happiness, :hygiene

<<<<<<< HEAD
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def bank_account
        @bank_account

    end
    
    def bank_account=(num)
        num += 1
    end

    def happiness
        @happiness
=======
    def initialize(name, balance,happiness,hygiene)
        if happiness < 0 || happiness > 10 || hygiene < 0 || hygiene > 10
            puts "try again"
        else 
            @name = name 
            @balance = balance
            @happiness = happiness
            @hygiene = hygiene
        end
    end

    def check_requirements(num)
        if num < 0 || num > 10
            puts "try a diff number"
        else
            return num
        end
    end

    def name 
        @name
    end

    def balance
        @balance
    end

    def happiness
        @happiness 
>>>>>>> 9d2dd897c0565d766a8b0b18a166bdf5dfa182af
    end

    def hygiene
        @hygiene
    end

<<<<<<< HEAD
    def happiness=(number)
        @happiness = number
         if @happiness > 10
             @happiness = 10
         elsif @happiness < 0
            @happiness = 0
         end
    end

    def hygiene=(number)
        @hygiene = number
         if @hygiene > 10
             @hygiene = 10
         elsif @hygiene < 0
            @hygiene = 0
         end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
        #binding.pry
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account = self.bank_account += salary    
        return "all about the benjamins"
    end

    def take_bath
        #binding.pry
        self.hygiene += 4
        if self.hygiene > 10
            self.hygiene = 10
        end
        #binding.pry
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        if self.happiness > 10
            self.happiness = 10
        end
        self.hygiene -= 3
        if self.hygiene < 0
            self.hygiene = 0
        end
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
=======

    def gets_paid=(new_balance)
        @balance += new_balance
        puts "ALL ABOUT THE BENJAMINS"
    end
    
    def happiness=(new_happiness)
        @happiness = check_requirements(new_happiness)
    end

    def hygiene=(new_hygiene)
        @hygiene = check_requirements(new_hygiene)
    end
    #binding.pry

    def take_bath
        @hygiene += 4
        if @hygiene > 10
            @hygiene = 10
        end
    end

    def work_out
        @happiness += 2
        if @happiness > 10
            @happiness = 10
        end
        @hygiene -= 3
        if @hygiene < 0
            @hygiene = 0
        end
    end

    def call_friend(friend)
        #binding.pry
        self.happiness += 1
        puts "Hi #{friend.name} It's #{self.name}. How are you?"
>>>>>>> 9d2dd897c0565d766a8b0b18a166bdf5dfa182af
        if self.happiness > 10
            self.happiness = 10
        end
        if friend.happiness > 10
            friend.happiness = 10
        end
<<<<<<< HEAD
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            self.happiness
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            name.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

    # def check_requirements(num)
    #     if num < 0 || num > 10
    #         puts "try a diff number"
    #     else
    #         return num
    #     end
    # end

    def name 
        @name
    end

  
end

#hello = Person.new("hello",30, 7,7)
#hello.work_out
#puts hello.hygiene
#puts hello.happiness


#stella = Person.new("stella", 40, 8,8)

#stella.call_friend(hello)
#puts stella.call_friend(hello)

#stella.start_converstation(hello,"porn")



=======
    end

    def start_converstation(name, topic)
        if topic == "politics"
            self.happiness -= 1
            name.happiness -= 1
            self.happiness
            puts "blah blah blah partisan"
        elsif topic == "weather"
            self.happiness += 1
            name.happiness += 1
            puts "blah blah blah sun"
        else 
            puts "blah blah blah"
        end
    end
end
>>>>>>> 9d2dd897c0565d766a8b0b18a166bdf5dfa182af
