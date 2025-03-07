class CreatePhilosophers < ActiveRecord::Migration[7.0]
  def change
    create_table :philosophers do |t|
      t.string :first_name, null:false
      t.string :last_name, null:true
      t.integer :birth_year, null:true
      t.integer :death_year, null:true
      t.text :bio, null:true

      t.timestamps
    end
  end
end
