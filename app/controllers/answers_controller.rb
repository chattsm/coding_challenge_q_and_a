class AnswersController < ApplicationController
  before_action :authenticate_user!, :find_question

  def new
    @answer = Answer.new
  end

  def create
    @question.answers.create!(question_params)

    redirect_to question_path(@question)
  end

  private

  def find_question
    @question = current_user.questions.find(params[:question_id])
  end

  def question_params
    params.require(:answer).permit(:content).merge(user: current_user)
  end
end
