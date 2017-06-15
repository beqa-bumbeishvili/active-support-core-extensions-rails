class CreateChiefs < ActiveRecord::Migration[5.0]
  def change
    create_table :chiefs do |t|
      t.string :name
      t.references :department, foreign_key: true
    end
  end
end
