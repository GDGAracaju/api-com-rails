class Event < ActiveRecord::Base
  has_many :talks, dependent: :destroy
  accepts_nested_attributes_for :talks, allow_destroy: true
end
