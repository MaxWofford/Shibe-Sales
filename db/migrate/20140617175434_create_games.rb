class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :reducedPrice
      t.integer :sale

      t.timestamps
    end
  end
end
