# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {username: 'jon'},
  {username: 'jingna'},
  {username: 'grant'},
  {username: 'jessie'},
  {username: 'alex'}
])

polls = Poll.create([
 {author_id: users.first.id, title: "Political Alignment Survey"},
 {author_id: users.first.id, title: "Netflix Survey"},
 {author_id: users.second.id, title: "Lunch Survey"},
 {author_id: users.last.id, title: "Youtube Survey"},
 {author_id: users.last.id, title: "Winter Survey"},
 {author_id: users.second.id, title: "Movie Survey"}
])

questions = Question.create([
 {poll_id: polls.first.id, text: "What is the political affiliation?"},
 {poll_id: polls.second.id, text: "What is your favorite Netflix show?"},
 {poll_id: polls.second.id, text: "Which of the following shows would you recommend?"},
 {poll_id: polls.second.id, text: "What is the best movie on Netflix?"},
 {poll_id: polls.last.id, text: "Which of the following movies do you recommend?"},
 {poll_id: polls.last.id, text: "Who's fault was it in 500 days of summer?"},
 {poll_id: polls.last.id, text: "Who's the best actor?"}
])

answer_choices = AnswerChoice.create([
 {question_id: questions.first.id, text: "Democrat"},
 {question_id: questions.first.id, text: "Republican"},
 {question_id: questions.first.id, text: "Green"},
 {question_id: questions.second.id, text: "Terrace House"},
 {question_id: questions.second.id, text: "Mr. Sunshine"},
 {question_id: questions.second.id, text: "The Magicians"},
 {question_id: questions.second.id, text: "Stranger Things"}
])

responses = Response.create([
 {user_id: users.first.id, answer_choice_id: answer_choices.first.id},
 {user_id: users.first.id, answer_choice_id: answer_choices[3].id},
 {user_id: users.second.id, answer_choice_id: answer_choices[2].id},
 {user_id: users.second.id, answer_choice_id: answer_choices[4].id}
])
