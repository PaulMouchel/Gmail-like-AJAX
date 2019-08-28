class EmailsController < ApplicationController

	def show
		@email = Email.find(params[:id])
	end

	def index
    @emails = Email.all
    puts "$"*100
    puts @emails
  end

  def create
    @email = Email.new(object: Faker::Book.genre, body: Faker::Book.genre)
    
    if @email.save
    	respond_to do |format|
	      format.html { redirect_to root_path }
	      format.js { }
    	end
      flash[:notice] = "Email created"
    else
      redirect_to root_path
      flash[:notice] = "Please try again"
    end
  end
end
