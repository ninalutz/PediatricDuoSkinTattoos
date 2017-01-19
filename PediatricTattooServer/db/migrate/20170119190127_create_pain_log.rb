class CreatePainLog < ActiveRecord::Migration[5.0]
  def change
    create_table :pain_logs do |t|
    	t.string :body_part, null: false, default: ""
    	t.integer :pain_level, null: false, default: 1
    	t.belongs_to :patient, foreign_key: true, index: true
    end
  end
end
