class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :name
      t.string :short_name
      t.string :category
      t.string :title
      t.string :url
      t.string :description
      t.string :thumbnail
      t.string :point
      t.string :date
      t.string :domain
      t.string :favicon
      t.string :tag

      t.timestamps
    end
  end
end
