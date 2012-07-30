class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.string :company_name
      t.string :email
      t.string :phone
      t.text :quick_pitch

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
