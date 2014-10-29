class AddImageAttribute < ActiveRecord::Migration
  def change
    add_column :movies, :imageurl, :string
    add_column :books, :imageurl, :string
    add_column :albums, :imageurl, :string
  end
end
