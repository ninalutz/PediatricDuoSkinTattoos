class Patient < ActiveRecord::Base
	has_many :pain_logs, inverse_of: :patient
	has_attached_file :bio_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

	validates :name, presence: true
	validates_attachment_content_type :bio_pic, content_type: /\Aimage\/.*\z/
end
