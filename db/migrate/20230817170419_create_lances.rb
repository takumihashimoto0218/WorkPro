class CreateLances < ActiveRecord::Migration[7.0]
  def change
    create_table :lances do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
