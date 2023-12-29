class AddUserIdToPodcasts < ActiveRecord::Migration[7.0]
  def change
    add_reference :podcasts, :user, null: false, foreign_key: true
  end
end
