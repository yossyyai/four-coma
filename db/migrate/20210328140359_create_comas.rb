class CreateComas < ActiveRecord::Migration[6.0]
  def change
    create_table :comas do |t|
      t.references :user,    null: false, foreign_key: true
      t.references :room,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
