require 'pry'
class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if self.roster.key?(grade)
            self.roster[grade] << name
        else
            self.roster[grade] = []
            self.roster[grade] << name
        end

    end

    def grade(num)
        if self.roster.key?(num)
            self.roster[num]
        end
    end

    def sort
        sorted_roster = self.roster.transform_values! {|value| value.sort }
    end


end

