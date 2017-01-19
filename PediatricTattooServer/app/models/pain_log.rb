class PainLog < ActiveRecord::Base
	belongs_to :patient, inverse_of: :pain_logs

	validates :body_part, :pain_level, presence: true
end
