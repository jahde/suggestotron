class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      
      t.references :topic
      t.references :user
      t.timestamps
    end
  end
end
