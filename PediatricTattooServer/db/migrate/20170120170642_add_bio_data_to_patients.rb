class AddBioDataToPatients < ActiveRecord::Migration[5.0]
  def up
    add_attachment :patients, :bio_pic
    add_column :patients, :address, :string, null: true
    add_column :patients, :phone, :string, null: true
    add_column :patients, :gender, :string, null: true
    add_column :patients, :email, :string, null: true
    add_column :patients, :problems, :jsonb, null: false, default: '[]'
    add_column :patients, :medications, :jsonb, null: false, default: '[]'
  end

  def down
    remove_attachment :patients, :bio_pic
    remove_column :patients, :address, :string, null: true
    remove_column :patients, :phone, :string, null: true
    remove_column :patients, :gender, :string, null: true
    remove_column :patients, :email, :string, null: true
    remove_column :patients, :problems, :jsonb, null: false, default: '[]'
    remove_column :patients, :medications, :jsonb, null: false, default: '[]'
  end
end
