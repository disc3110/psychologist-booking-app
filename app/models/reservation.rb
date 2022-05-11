class Reservation < ApplicationRecord
  belongs_to :psychologist
  belongs_to :user
end
