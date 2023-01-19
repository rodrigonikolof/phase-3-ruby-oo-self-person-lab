# your code goes here
class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

    def initialize (name, bank_account=25, happiness=8, hygiene=8 )
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
    @happiness =  if happiness > 10
                            10
                        elsif happiness < 0
                            0
                        else 
                            happiness
                        end
    end
    def hygiene=(hygiene)
        @hygiene =  if hygiene > 10

                                10
                            elsif hygiene < 0
                                0
                            else 
                                hygiene
                            end
        end
    
    def happy?
        @happiness > 7 ? true:false
    end
    def clean?
        @hygiene>7? true:false
    end
    def get_paid amount
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = @hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene = @hygiene -3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
    end
    def call_friend person
        self.happiness = @happiness + 3
        person.happiness = person.happiness + 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation (person, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            person.happiness = person.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            person.happiness = person.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"    
        end    
    end
end