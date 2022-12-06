require "spec_helper"

describe RubyNation::DrawingEntry do
  describe ".create!" do
    it "should post to the drawing web service" do
      mock_response = mock("response", body: "{}")
      Net::HTTP.should_receive(:post_form).with(anything, "entry[email]" => "benjamin.lee.smith@gmail.com").and_return(mock_response)

      RubyNation::DrawingEntry.create!("benjamin.lee.smith@gmail.com")
    end

    it "returns the message" do
      mock_response = mock("response", body: "{\"message\":\"hi there!\"}")
      Net::HTTP.stub(:post_form).and_return(mock_response)

      RubyNation::DrawingEntry.create!("benjamin.lee.smith@gmail.com").should == 'hi there!'
    end
  end
end