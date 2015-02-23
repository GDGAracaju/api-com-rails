class Talk < ActiveRecord::Base
  belongs_to :event
  belongs_to :speaker
end
