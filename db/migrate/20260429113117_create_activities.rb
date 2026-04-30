class CreateActivities < ActiveRecord::Migration[8.1]
  def change
    create_table :activities do |t|
      t.string  :title,       null: false
      t.text    :description
      t.date    :datetime,        null: false
      t.string  :location,    null: false
      t.string  :status,      default: "upcoming"
      t.string  :emoji,       default: "📅"
      t.timestamps
    end
  end
end
