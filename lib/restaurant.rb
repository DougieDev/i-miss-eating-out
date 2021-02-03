class Restaurant
    attr_reader :opening_time,
                :name,
                :dishes

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
        @lunch = nil
    end

    def closing_time(hours)
        "#{(opening_time.to_i + hours)}:00"
    end

    def add_dish(dish_name)
        @dishes << dish_name
    end

    def open_for_lunch?
        if @opening_time.to_i < 12
            @lunch = true
        else
            false
        end
    end

    def menu_dish_names
        upcased_dishes = []
        @dishes.each do |dish|
            upcased_dishes << dish.upcase
        end
        upcased_dishes
    end

    def announce_closing_time(hours)
        if closing_time(hours).to_i < 12
            "#{@name} is closing at #{closing_time(hours)}AM"
        elsif closing_time(hours).to_i >= 12
            "#{@name} is closing at #{closing_time(hours).to_i - 12}:00PM"
        end
    end
end