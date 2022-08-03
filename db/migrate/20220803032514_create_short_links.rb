class CreateShortLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :short_links do |t|
      t.string :url
      t.string :short_code
      t.integer :alexa_rank
      t.integer :counter

      t.timestamps
    end
  end
end
