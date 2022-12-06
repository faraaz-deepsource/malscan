require "spec_helper"

describe RubyNation::EventsTable::Printer do
  describe "#print_table" do
    it "prints the date" do
      printer = RubyNation::EventsTable::Printer.new

      printer.stub(:print_schedule_table)

      STDOUT.should_receive(:puts).with("Thursday, June 13, 2013")

      printer.print_table({Date.new(2013, 6, 13) => []})
    end

    it "prints out time slots with two events" do
      schedule_data = {
          Date.new => {
              columns: 3, events: [
                  RubyNation::EventsTable::TimeSlot.new("11:20-12:00", "Andy Pliszka: Scaling Large Rails apps with Gems and Engines", "Jim Gay: Making Sense of Making Code")
              ]
          }
      }

      printer = RubyNation::EventsTable::Printer.new

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with(
"+-------------+--------------------------------------------------------------+--------------------------------------+
| 11:20-12:00 | Andy Pliszka: Scaling Large Rails apps with Gems and Engines | Jim Gay: Making Sense of Making Code |
+-------------+--------------------------------------------------------------+--------------------------------------+"
      )

      printer.print_table(schedule_data)
    end

    it "prints time slots with one event" do
      schedule_data = {
          Date.new => {
              columns: 2, events: [
                  RubyNation::EventsTable::TimeSlot.new("05:00-05:40", "Avdi Grimm: Code to Joy")
              ]
          }
      }

      printer = RubyNation::EventsTable::Printer.new

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with(
"+-------------+-------------------------+
| 05:00-05:40 | Avdi Grimm: Code to Joy |
+-------------+-------------------------+"
      )

      printer.print_table(schedule_data)
    end
  end
end