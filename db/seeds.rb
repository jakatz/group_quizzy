# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quizzes = Quiz.create([
  {
    name: "Quiz1",
    high_score: 0
  },
  {
    name: "Quiz2",
    high_score: 0
  }
])

quizzes.first.questions.create([
  {
    question: "what is your favorite color",
    answer: "a",
    o1: "blue!",
    o2: "african or european",
    o3: "to get to the holy grail",
    o4: "asdf",
    num_correct: 0,
    attempts: 0
  },
  {
    question: "what is your quest",
    answer: "c",
    o1: "asd",
    o2: "african or european",
    o3: "to get to the holy grail",
    o4: "asdf",
    num_correct: 0,
    attempts: 0
  },
  {
    question: "what is the airspeed velocity of a swallow",
    answer: "b",
    o1: "asd",
    o2: "african or european",
    o3: "asdf",
    o4: "asdf",
    num_correct: 0,
    attempts: 0
  }
])
