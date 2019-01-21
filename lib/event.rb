require "pry"
require "time"

class Event
    attr_accessor :start_date, :length, :title, :attendees

    def initialize(start_date_to_save, length_to_save, title_to_save, attendees_to_save)
        @start_date = Time.parse(start_date_to_save.to_s)        
        @length = length_to_save.to_i
        @title = title_to_save.to_s   
        @attendees = attendees_to_save.to_a
    end

    def postpone_24h
        @postponed = @start_date + 60 * 60 * 24
    end

    def end_date
        @end_of_event = @start_date + @length * 60                  #*60 pour faire passer length de minutes à secondes
    end
    
    def is_past
        if @start_date < Time.now
            puts true
            else puts false
        end
    end

    def is_future
        !self.is_past
    end

    def is_soon
        if Time.now + 30*60 > @start_date && !self.is_past
            return true
            else false
        end
    end

    def to_s
        puts "Titre : #{@title}"
        puts "Date de début : #{@start_date.strftime("%y-%m-%d %H:%M")}"
        puts "Durée : #{@length} minutes"
        puts "Invités : #{@attendees}"
    end

    binding.pry
end

