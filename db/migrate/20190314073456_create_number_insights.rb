class CreateNumberInsights < ActiveRecord::Migration[5.2]
  def change
    create_table :number_insights do |t|

      t.timestamps
    end
  end
end
