module RubyNation
  class Schedule
    SCHEDULE_DATA = {
        Date.new(2013, 6, 13) => {
            columns: 2,
            events: [
                RubyNation::EventsTable::TimeSlot.new("09:00-05:30", "Rails Girls DC Training Session"),
                RubyNation::EventsTable::TimeSlot.new("06:00-08:30", "RailsGirls DC/RubyNation Twisted Willow Party Sponsored by AT&T and SAIC"),
            ]
        },
        Date.new(2013, 6, 14) => {
            columns: 3,
            events: [
                RubyNation::EventsTable::TimeSlot.new("08:00-09:15", "Registration and Breakfast"),
                RubyNation::EventsTable::TimeSlot.new("09:15-09:30", "Welcome"),
                RubyNation::EventsTable::TimeSlot.new("09:30-10:10", "Russ Olsen: Insight, Intuituion and Programming"),
                RubyNation::EventsTable::TimeSlot.new("10:20-11:00", "Bryan Liles: Why We Do What We Do"),
                RubyNation::EventsTable::TimeSlot.new("11:00-11:30", "Morning Break"),
                RubyNation::EventsTable::TimeSlot.new("11:30-12:10", "Sandi Metz: Magic Tricks of Testing", "Christopher Lee: RubyJS - Take Ruby's core with you client-side"),
                RubyNation::EventsTable::TimeSlot.new("12:20-01:00", "Nick Gauthier: Rails 4 in Production", "John Downey: DevOps for the Rubyist Soul"),
                RubyNation::EventsTable::TimeSlot.new("01:00-02:20", "Lunch Downtown"),
                RubyNation::EventsTable::TimeSlot.new("02:20-03:00", "Jason Clark: Make an Event of It!", "Bryan Helmkamp: Rails Application Security in Practice"),
                RubyNation::EventsTable::TimeSlot.new("03:10-03:50", "Rachel Ober: How to Be A Ruby Mentor", "John Schneider and Leo Zhadanovsky: DevOps At Obama for America and The Democratic National Committee"),
                RubyNation::EventsTable::TimeSlot.new("03:50-04:20", "Afternoon Break and Snack"),
                RubyNation::EventsTable::TimeSlot.new("04:20-05:00", "Emily Stolfo: Hacking the Academic Experience", "Christopher Sexton and Josh Szmajda: Making AngularJS play nice with Rails"),
                RubyNation::EventsTable::TimeSlot.new("05:10-05:50", "David Copeland: You Might \"Are Gonna Need It\" - Avoiding the MonoRail", "Lauren Voswinkel: Putting Off Persistence"),
                RubyNation::EventsTable::TimeSlot.new("06:00-09:00", "McGinty's Pub Party Sponsored by Sequoia"),
            ]
        },

        Date.new(2013, 6, 15) => {
            columns: 3,
            events: [
                RubyNation::EventsTable::TimeSlot.new("08:30-09:45", "Registration and Breakfast"),
                RubyNation::EventsTable::TimeSlot.new("09:45-10:25", "Kerri Miller: You Can't Miss What You Can't Measure", "Josh Adams and Adam Dill: A Survey of Robotics with Ruby"),
                RubyNation::EventsTable::TimeSlot.new("10:35-11:15", "Rich Kilmer: RubyMotion and Bluetooth 4", "Dan Bernier: Object-Functional Fusion in Ruby"),
                RubyNation::EventsTable::TimeSlot.new("11:15-11:35", "Morning Break"),
                RubyNation::EventsTable::TimeSlot.new("11:35-12:15", "Andy Pliszka: Scaling Large Rails apps with Gems and Engines", "Jim Gay: Following the Path of Programs"),
                RubyNation::EventsTable::TimeSlot.new("12:25-01:05", "Evan Light: If It Bleeds, It Leads", "Steven Haddox: PEACE: Programming Expertly Amid Corporations and Enterprises"),
                RubyNation::EventsTable::TimeSlot.new("01:05-02:25", "Lunch Downtown"),
                RubyNation::EventsTable::TimeSlot.new("02:25-03:05", "John Athayde: The Timeless Way of Building", "Benjamin Smith: Hacking with Gems"),
                RubyNation::EventsTable::TimeSlot.new("03:05-03:35", "Afternoon Break and Snack"),
                RubyNation::EventsTable::TimeSlot.new("03:45-04:25", "Dave Bock: Lightning Talks"),
                RubyNation::EventsTable::TimeSlot.new("04:25-05:05", "Steve Klabnik: Rescuing Resque: An OSS story"),
                RubyNation::EventsTable::TimeSlot.new("05:15-05:55", "Avdi Grimm: Code to Joy"),
            ]
        }
    }

    def self.print
      printer = RubyNation::EventsTable::Printer.new
      printer.print_table(SCHEDULE_DATA)
      true
    end
  end
end