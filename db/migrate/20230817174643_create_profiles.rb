class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :name
      t.bigint :lance_id
      t.string :self_infomation
      t.string :image

      t.timestamps
    end
  end
end
