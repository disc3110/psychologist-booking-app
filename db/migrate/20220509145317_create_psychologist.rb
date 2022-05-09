class CreatePsychologist < ActiveRecord::Migration[7.0]
  def change
    create_table :psychologists do |t|
      t.string :name
      t.string :gender
      t.string :email
      t.text :area_of_specialty
      t.string :image

      t.timestamps
    end
  end
end
