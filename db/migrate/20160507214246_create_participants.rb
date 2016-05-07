class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthdate
      t.string :nationality

      t.timestamps
    end
  end
end
