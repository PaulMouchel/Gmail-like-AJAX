class EmailsController < ApplicationController
before_action :set_email, only: [:show, :update, :destroy]

	def show
		@email.update(read: true)
		puts "ù"*100
		puts @email.id
		puts params
		puts "ù"*100
	end

	def index
    @emails = Email.all
  end

  def create
  	@email = Email.new(object: Faker::Book.title, body: Faker::Quotes::Shakespeare.hamlet_quote)
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
  	@email.update(read: !@email.read)
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
end
