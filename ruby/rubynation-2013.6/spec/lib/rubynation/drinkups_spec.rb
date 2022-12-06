require "spec_helper"

describe RubyNation::Drinkups do
  describe ".print" do
    it "should print out the drinkups" do
      RubyNation::EventsTable::Printer.any_instance.should_receive(:print_table).with(RubyNation::Drinkups::DRINKUPS_DATA)

      RubyNation::Drinkups.print
    end
  end
end