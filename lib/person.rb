# your code goes here
require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor  :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        if @hygiene > 10
            @hygiene= 10
            #binding.pry
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        if @hygiene < 0
            @hygiene= 0
        end
        self.happiness += 2
        if @happiness > 10
            @happiness= 10
        end
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        if @happiness > 10
            @happiness= 10
        end
        friend.happiness += 3
        if friend.happiness > 10
            friend.happiness= 10
        end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            if @happiness < 0
                @happiness= 0
            end
            friend.happiness -= 2
            if friend.happiness < 0
                friend.happiness= 0
            end
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            if @happiness > 10
                @happiness= 10
            end
            friend.happiness += 1
            if friend.happiness > 10
                friend.happiness= 10
            end
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end