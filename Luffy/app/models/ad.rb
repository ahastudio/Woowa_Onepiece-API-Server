class Ad < ApplicationRecord
  belongs_to :bus_stop
  has_one :ad_det
end
