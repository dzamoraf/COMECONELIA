class CreateAlgos < ActiveRecord::Migration
  def change
    create_table :algos do |t|
      t.string :nombre
      t.boolean :fecha

      t.timestamps
    end
  end
end
