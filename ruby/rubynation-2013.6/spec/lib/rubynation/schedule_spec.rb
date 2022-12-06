require "spec_helper"

describe RubyNation::Schedule do
  describe ".print" do
    it "should print out the events_table" do
      RubyNation::EventsTable::Printer.any_instance.should_receive(:print_table).with(RubyNation::Schedule::SCHEDULE_DATA)

      RubyNation::Schedule.print
    end
  end
end