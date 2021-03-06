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

ActiveRecord::Schema.define(version: 20140728231349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: true do |t|
    t.text     "question"
    t.string   "answer"
    t.string   "o1"
    t.string   "o2"
    t.string   "o3"
    t.string   "o4"
    t.integer  "num_correct"
    t.integer  "attempts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quiz_questions", force: true do |t|
    t.integer "quiz_id"
    t.integer "question_id"
  end

  create_table "quizzes", force: true do |t|
    t.string  "name"
    t.integer "high_score"
  end

  create_table "scores", force: true do |t|
    t.string   "name"
    t.integer  "high_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
