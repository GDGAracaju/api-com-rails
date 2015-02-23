module Api
  module V1
    class SpeakersController < ActionController::Base
      respond_to :json

      def index
        @speakers = Speaker.all
        speakers = Jbuilder.encode do |json|
          json.speakers @speakers do |speaker|
            json.name speaker.name
            json.bio speaker.bio
          end
        end

        respond_with speakers
      end
    end
  end
end
