class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :target_at
      t.references :user, null: false, foreign_key: true
      t.boolean :done, null: false, default: false

      t.datetime :target_at

      t.timestamps
    end
  end
end
