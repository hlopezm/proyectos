require 'spec_helper'

describe EventsController do

  describe '#index' do

    # it 'displays events for today' do
    #   event = double("event")

    #   expect(Event).to receive(:send_message)

    #   expect(Event).to receive(:for_today).and_return([event])

    #   expect(Event).to receive(:for_today).and_call_original


    #   get :index

    #   #expect(assigns(:events)).to eq([event])
    # end

    # it 'displays events for today' do
    #   event = double("event")

    #   Event.stub(:for_today).and_return([event])

    #   get :index

    #   expect(assigns(:events)).to eq([event])
    # end

    it 'displays events for today' do
      event = FactoryGirl.create(:event, start_at: Time.now)

      expect(Event).to receive(:for_today).and_call_original

      get :index

      expect(assigns(:events)).to eq([event])
    end

  end

end
