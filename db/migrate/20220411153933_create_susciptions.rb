class CreateSusciptions < ActiveRecord::Migration[7.0]
  def change
    create_table :susciptions do |t|
      t.string :email
      t.boolean :isWomen
      t.boolean :isMen
      t.boolean :isChildren

      t.timestamps
    end
  end
end
