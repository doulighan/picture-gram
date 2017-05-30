class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :image_url
      t.references :user
      t.timestamps
    end
  end
end
