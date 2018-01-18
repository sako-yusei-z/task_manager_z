class CreateTimeRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :time_relations, comment: '時間関連' do |t|
      t.datetime :start_time, comment: 'タスク開始日時'
      t.datetime :end_time,   comment: 'タスク終了日時'
      t.datetime :deleted_at, comment: '削除日時'

      t.timestamps
    end
  end
end
