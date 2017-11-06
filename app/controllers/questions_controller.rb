class QuestionsController < ApplicationController
  def ask
    @placeholder = "What do you need help with?"
  end

  def answer
    @answer = ""
    @question = params[:question]
    if @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
