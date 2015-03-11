class PesselForm < ActiveRecord::Base
	validates :pessel, presence: true
	validates :pessel, length: {minimum: 8}
	validates :pessel, length: {maximum: 8}
	validates :pessel, uniqueness: true
end
