# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140804150825) do

  create_table "questions", force: true do |t|
    t.integer  "quiz_id"
    t.string   "query"
    t.string   "correct_answer"
    t.string   "user_answer"
    t.string   "author"
    t.string   "wrong_answer_1"
    t.string   "wrong_answer_2"
    t.string   "wrong_answer_3"
    t.boolean  "answered"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.integer  "chapter_number"
    t.string   "chapter_name"
    t.integer  "number_of_questions"
    t.integer  "user_id"
    t.string   "score"
    t.integer  "number_answered"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "bio"
    t.string   "pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
