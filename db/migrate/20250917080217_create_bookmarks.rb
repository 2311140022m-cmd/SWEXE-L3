class CreateBookmarks < ActiveRecord::Migration[8.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :url
      t.string :hiduke

      t.timestamps
    end
  end
end
