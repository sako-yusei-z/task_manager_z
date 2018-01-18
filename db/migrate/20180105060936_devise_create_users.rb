# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, comment: 'ユーザー' do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: "", limit: 255, comment: 'メールアドレス'
      t.string :encrypted_password, null: false, default: "", limit: 255, comment: 'パスワード'
      t.string :name,               null: false, default: "", limit: 255, comment: '名前'
      t.datetime :deleted_at,                                             comment: '削除日時'

      ## Recoverable
      t.string   :reset_password_token,                       limit: 255, comment: '新しいパスワード'
      t.datetime :reset_password_sent_at,                                 comment: 'パスワードリセット時の時間'

      ## Rememberable
      t.datetime :remember_created_at,                                    comment: 'ログイン情報の保持'

      ## Trackable
      t.integer  :sign_in_count,    null: false, default: 0,              comment: 'ログイン回数'
      t.datetime :current_sign_in_at,                                     comment: 'ログイン時更新されるタイムスタンプ'
      t.datetime :last_sign_in_at,                                        comment: '以前のログインのタイムスタンプ'
      t.string   :current_sign_in_ip,                         limit: 255, comment: 'ログイン時更新されるリモートIP'
      t.string   :last_sign_in_ip,                            limit: 255, comment: '以前のログインのリモートIP'

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps                  null: false

      t.index [:email],              unique: true
      t.index [:encrypted_password], unique: true
    end

    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
