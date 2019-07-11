class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.references :podcast, foreign_key: true

      t.timestamps
    end
  end
end
