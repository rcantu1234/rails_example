class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :message
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :users
  end
end
