class CreateTubes < ActiveRecord::Migration
  def change
    create_table :tubes do |t|
      t.string :source
      t.string :title
      t.string :url

      t.timestamps null: false
    end
  end
end
