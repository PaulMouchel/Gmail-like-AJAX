class EmailsController < ApplicationController
before_action :set_email, only: [:show, :update, :destroy]

	def show
		@email.read = true
		@email.save
	end

	def index
    @emails = Email.all
  end

  def create
  	@email = Email.new(object: Faker::Book.title, body: Faker::Quotes::Shakespeare.hamlet_quote)
    #@email = Email.new(object: Faker::Book.genre, body: Faker::Book.genre)
    
    if @email.save
    	respond_to do |format|
	      format.html { redirect_to root_path }
	      format.js { }
    	end
    else
      redirect_to root_path
    end
  end

  def update
  	@email.read = !@email.read
  	@email.update(email_params)
    respond_to do |format|
	      format.html { redirect_to root_path }
	      format.js { }
    end
  end

  def destroy
    @email.destroy
    respond_to do |format|
	      format.html { redirect_to root_path }
	      format.js { }
    end
  end

  private

  def set_email
      @email = Email.find(params[:id])
  end

  def email_params
    params.permit(:object, :body)
  end
end
