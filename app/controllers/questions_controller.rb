class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # @members = ["thanh", "dimitri", "germain", "damien", "julien", "julie"]
    # # Si il y'a une recherche
    # if params[:member]
    #   # Redéfinir la valeur de members filtrée par rapport à la recherche
    #   @members = @members.select {|member| member.downcase.start_with?(params[:member].downcase)}
    # end
    @answer = params[:question]

    case @answer
    when "I am going to work"
      @display_answer = "Great"
    when @answer.end_with?("?") == true
      @display_answer = "Silly question, get dressed and go to work!"
    else
      @display_answer = "I don't care, get dressed and go to work!"
    end
  end
end
