module RubyNation
  class DrawingEntry
    ENTRY_URL = "http://rubynation-drawing.herokuapp.com/entries"

    def self.create!(email)
      uri = URI(ENTRY_URL)
      res = Net::HTTP.post_form(uri, "entry[email]" => email)
      JSON.parse(res.body)["message"]
    end
  end
end