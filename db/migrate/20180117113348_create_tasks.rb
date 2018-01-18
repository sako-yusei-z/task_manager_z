class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks, comment: 'to do' do |t|
      t.string :name,         limit: 255, comment: 'タスク名'
      t.text :contents,       limit: 600, comment: 'タスク内容'
      t.datetime :deleted_at,             comment: '削除日時'
      t.references :user,                 foreign_key: true

      t.timestamps
    end
  end
end
