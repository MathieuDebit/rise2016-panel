class AddAvatarToParticipants < ActiveRecord::Migration[5.0]
  def change
    add_column :participants, :avatar, :string
  end
end
