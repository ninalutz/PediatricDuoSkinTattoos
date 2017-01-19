class Patient < ActiveRecord::Base
	has_many :pain_logs, inverse_of: :patient

	validates :name, presence: true
end
