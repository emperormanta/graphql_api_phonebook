class CreatePhonebooks < ActiveRecord::Migration[5.2]
  def change
    create_table :phonebooks do |t|
      t.string :name
      t.string :number
      t.string :address
      t.string :email
      t.string :birthday
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
