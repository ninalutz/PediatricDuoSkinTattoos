class AddTimeStampToPainLogs < ActiveRecord::Migration[5.0]
  def change
  	add_column :pain_logs, :created_at, :datetime
  end
end
