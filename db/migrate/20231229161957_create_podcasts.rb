class CreatePodcasts < ActiveRecord::Migration[7.0]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.text :description
      t.date :published_at
      t.text :transcript

      t.timestamps
    end
  end
end
