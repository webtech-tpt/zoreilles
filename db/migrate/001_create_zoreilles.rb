class CreateZoreilles < ActiveRecord::Migration
  def change
    
    create_table :zoreilles do |t|
      t.column :body, :text
      t.column :username, :string
      t.timestamps
    end

  end
end
