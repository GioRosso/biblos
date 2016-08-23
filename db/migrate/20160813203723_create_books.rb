class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :autors
      t.integer :edition
      t.string :publisher
      t.string :language
      t.integer :year
      t.integer :pages
      t.text :note
      t.text :imgurl
      t.integer :genderid
      t.string :timestamps

      t.timestamps null: false
    end
  end
end
