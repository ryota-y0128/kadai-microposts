class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.string :content
      t.references :user, foreign_key: true
      # 実際のデータベース上ではuser_idとして存在
      t.timestamps
    end
  end
end
