class CreateCrims < ActiveRecord::Migration
  def change
    create_table :crims do |t|
      t.string :statute
      t.string :juryinst
      t.string :notes

      t.timestamps null: false
    end
  end
end
