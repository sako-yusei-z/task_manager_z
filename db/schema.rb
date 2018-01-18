# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180117113348) do

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "to do" do |t|
    t.string "name",                      comment: "タスク名"
    t.text "contents",                    comment: "タスク内容"
    t.datetime "deleted_at",              comment: "削除日時"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"],     name: "index_tasks_on_user_id"
  end

  create_table "time_relations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "時間関連" do |t|
    t.datetime "start_time",              comment: "タスク開始日時"
    t.datetime "end_time",                comment: "タスク終了日時"
    t.datetime "deleted_at",              comment: "削除日時"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "ユーザー" do |t|
    t.string "email",              default: "", null: false, comment: "メールアドレス"
    t.string "encrypted_password", default: "", null: false, comment: "パスワード"
    t.string "name",               default: "", null: false, comment: "名前"
    t.datetime "deleted_at",                                 comment: "削除日時"
    t.string "reset_password_token",                         comment: "新しいパスワード"
    t.datetime "reset_password_sent_at",                     comment: "パスワードリセット時の時間"
    t.datetime "remember_created_at",                        comment: "ログイン情報の保持"
    t.integer "sign_in_count",     default: 0,  null: false, comment: "ログイン回数"
    t.datetime "current_sign_in_at",                         comment: "ログイン時更新されるタイムスタンプ"
    t.datetime "last_sign_in_at",                            comment: "以前のログインのタイムスタンプ"
    t.string "current_sign_in_ip",                           comment: "ログイン時更新されるリモートIP"
    t.string "last_sign_in_ip",                              comment: "以前のログインのリモートIP"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["email"],              name: "index_users_on_email", unique: true
    t.index ["encrypted_password"], name: "index_users_on_encrypted_password", unique: true
  end

  add_foreign_key "tasks", "users"
end
