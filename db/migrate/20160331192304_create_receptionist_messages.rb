class CreateReceptionistMessages < ActiveRecord::Migration
  def change
    create_table :receptionist_messages do |t|
      t.string :title
      t.text :text
      t.string :category

      t.timestamps null: false
    end
  end
end
