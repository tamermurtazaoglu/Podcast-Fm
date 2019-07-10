class AddAttributesToPodcast < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :title, :string
    add_column :podcasts, :description, :text
    add_column :podcasts, :itunes, :string
    add_column :podcasts, :stitcher, :string
    add_column :podcasts, :podbay, :string
  end
end
