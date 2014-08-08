class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
		end
  end

  def show
		@quiz.number_answered == 0
		@quiz.correct_questions == 0
    @quiz = Quiz.find_by(id: params[:id])
if session['username'] == nil
	redirect_to "/", :notice => "Deal with it."
end
  end

  def new
		@quizzes = Quiz.all
		@users = User.all
		@chapter_count = Quiz::CHAPTER_COUNT
		@chapter_name = Quiz::CHAPTER_NAMES
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
		end
  end

  def create
    @quiz = Quiz.new
    @quiz.chapter_number = params[:chapter_number]
    @quiz.chapter_name = params[:chapter_name]
    @quiz.number_of_questions = params[:number_of_questions]
    @quiz.user_id = params[:user_id]
    @quiz.score = params[:score]
    @quiz.number_answered == 0
    @quiz.completed = params[:completed]
		@quiz.correct_questions == 0

    if @quiz.save
			redirect_to "/quizzes/#{ @quiz.id }", :notice => "Quiz saved"
    else
      redirect_to '/new_quiz', :notice => @quiz.errors.full_messages.join(' ')
    end
  end

  def edit
    @quiz = Quiz.find_by(id: params[:id])
		@quizzes = Quiz.all
		@users = User.all
		@chapter_count = Quiz::CHAPTER_COUNT
		@chapter_name = Quiz::CHAPTER_NAMES
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
				end
  end

  def update
    @quiz = Quiz.find_by(id: params[:id])
		@quiz.chapter_number = params[:number]
		@quiz.chapter_name = params[:name]
    @quiz.number_of_questions = params[:number_of_questions]
    @quiz.user_id = params[:user_id]
    @quiz.score = params[:score]
    @quiz.number_answered == 0
    @quiz.completed = params[:completed]
		@quiz.correct_questions == 0

    if @quiz.save
      redirect_to "/quizzes/#{ @quiz.id }", :notice => "Quiz saved"
    else
			redirect_to "/quizzes/#{ @quiz.id }/edit", :notice => @quiz.errors.full_messages.join(' ')
    end
  end

  def destroy
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.destroy
		redirect_to "/", :notice => "Quiz deleted."
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
		end
  end
end
