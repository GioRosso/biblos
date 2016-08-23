class PopraviImeZanra < ActiveRecord::Migration
  def self.up
    rename_column :books, :genderid, :genreid
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
