class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    current_user.questions.create!(question_params)

    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
