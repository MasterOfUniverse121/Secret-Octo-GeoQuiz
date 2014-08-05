class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find_by(id: params[:id])
  end

  def new
		@quizzes = Quiz.all
  end

  def create
    @quiz = Quiz.new
    @quiz.chapter_number = params[:chapter_number]
    @quiz.chapter_name = params[:chapter_name]
    @quiz.number_of_questions = params[:number_of_questions]
    @quiz.user_id = params[:user_id]
    @quiz.score = params[:score]
    @quiz.number_answered = params[:number_answered]
    @quiz.completed = params[:completed]

    if @quiz.save
      redirect_to "/quizzes/#{ @quiz.id }"
    else
      render 'new'
    end
  end

  def edit
    @quiz = Quiz.find_by(id: params[:id])
		@quizzes = Quiz.all
  end

  def update
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.chapter_number = params[:chapter_number]
    @quiz.chapter_name = params[:chapter_name]
    @quiz.number_of_questions = params[:number_of_questions]
    @quiz.user_id = params[:user_id]
    @quiz.score = params[:score]
    @quiz.number_answered = params[:number_answered]
    @quiz.completed = params[:completed]

    if @quiz.save
      redirect_to "/quizzes/#{ @quiz.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.destroy


    redirect_to "/quizzes"
  end
end
