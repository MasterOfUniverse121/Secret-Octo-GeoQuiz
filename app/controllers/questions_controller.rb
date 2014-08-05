class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  def new
		@quizzes = Quiz.all
		@authors = User.all
  end

  def create
    @question = Question.new
    @question.quiz_id = params[:quiz_id]
    @question.query = params[:query]
    @question.correct_answer = params[:correct_answer]
    @question.user_answer = params[:user_answer]
    @question.author = params[:author]
    @question.wrong_answer_1 = params[:wrong_answer_1]
    @question.wrong_answer_2 = params[:wrong_answer_2]
    @question.wrong_answer_3 = params[:wrong_answer_3]
    @question.answered = params[:answered]

    if @question.save
			redirect_to "/show"
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find_by(id: params[:id])
		@quizzes = Quiz.all
		@authors = User.all
  end

  def update
    @question = Question.find_by(id: params[:id])
    @question.quiz_id = params[:quiz_id]
    @question.query = params[:query]
    @question.correct_answer = params[:correct_answer]
    @question.user_answer = params[:user_answer]
    @question.author = params[:author]
    @question.wrong_answer_1 = params[:wrong_answer_1]
    @question.wrong_answer_2 = params[:wrong_answer_2]
    @question.wrong_answer_3 = params[:wrong_answer_3]
    @question.answered = params[:answered]

    if @question.save
      redirect_to "/questions/#{ @question.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find_by(id: params[:id])
    @question.destroy


    redirect_to "/questions"
  end
end
