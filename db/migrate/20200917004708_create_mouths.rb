class CreateMouths < ActiveRecord::Migration[5.2]
  def change
    create_table :mouths do |t|
      t.text :content
    end
  end
end
