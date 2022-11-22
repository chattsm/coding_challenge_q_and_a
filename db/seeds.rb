question_user = User.create!(
  email: 'question@test.com',
  password: 'test123',
  password_confirmation: 'test123'
)

question = Question.create!(
  user: question_user,
  title: 'What is the capital of Qatar?',
  description: 'I would really like to know what the capital of Qatar is please.'
)

answer_user = User.create!(
  email: 'answer@test.com',
  password: 'test123',
  password_confirmation: 'test123'
)

Answer.create!(
  user: answer_user,
  question: question,
  content: 'Doha'
)