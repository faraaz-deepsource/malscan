module RubyNation
  class Drinkups
    DRINKUPS_DATA = {
        Date.new(2013, 6, 13) => {
            columns: 2,
            events: [
                RubyNation::EventsTable::TimeSlot.new("06:00-08:30", "RailsGirls DC/RubyNation Twisted Willow Party Sponsored by AT&T and SAIC"),
            ]
        },
        Date.new(2013, 6, 14) => {
            columns: 2,
            events: [
                RubyNation::EventsTable::TimeSlot.new("06:00-09:00", "McGinty's Pub Party Sponsored by Sequoia"),
            ]
        },
    }

    def self.print
      printer = RubyNation::EventsTable::Printer.new
      printer.print_table(DRINKUPS_DATA)
      true
    end
  end
end