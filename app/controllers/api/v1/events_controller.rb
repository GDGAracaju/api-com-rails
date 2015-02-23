module Api
  module V1
    class EventsController < ActionController::Base
      respond_to :json

      def index
        @events = Event.all
        events = Jbuilder.encode do |json|
          json.events @events do |event|
            json.id event.id
            json.title event.title
            json.description event.description
            json.event_date event.event_date

            json.talks event.talks do |talk|
              json.id talk.id
              json.title talk.title
              json.description talk.description
              json.speaker talk.speaker.name
              json.bio talk.speaker.bio
            end
          end
        end

        respond_with events
      end
    end
  end
end
