module RubyNation
  module EventsTable
    class TimeSlot
      attr_accessor :time, :track1_event_name, :track2_event_name

      def initialize(time, track1_event_name, track2_event_name = nil)
        self.time = time
        self.track1_event_name = track1_event_name
        self.track2_event_name = track2_event_name
      end
    end
  end
end