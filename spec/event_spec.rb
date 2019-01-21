require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
    it 'creates an event' do
      event = Event.new("start_date", 9, "title", ["attendee1","attendee2"])
      expect(event.class).to eq(Event)
      end
    
	end

end