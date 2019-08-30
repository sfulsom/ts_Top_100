class CreateBillboards < ActiveRecord::Migration[6.0]
  def change
    create_table :billboards do |t|
      t.integer :rank
      t.string :artist
      t.string :title
      t.string :genre

      t.timestamps
    end
  end
end
