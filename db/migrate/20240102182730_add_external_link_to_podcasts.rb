class AddExternalLinkToPodcasts < ActiveRecord::Migration[7.0]
  def change
    add_column :podcasts, :external_link, :string
  end
end
