class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.include?("cu")
      @answer = "Quero!"
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question[-1] == "?"
      @answer = "Silly question, dress up and go to work"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def home
  end

end
