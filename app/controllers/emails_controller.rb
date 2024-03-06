class EmailsController < ApplicationController
  before_action :set_email, only: %i[ show edit update destroy ]
  # GET /emails
  def index
    @emails = Email.all
  end

  # GET /emails/1
  def show
  end

  # GET /emails/new
  def new
    @email = Email.new
  end

  # GET /emails/1/edit
  def edit
  end

  # GET /emails
  def create

    if (params[:mode].to_i)
      @email = Email.new(email_params)
    else
      @email = Email.new(
        object: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph(sentence_count: rand(3..10))
      )
    end

    if @email.save
      redirect_to email_url(@email), notice: "Email was successfully created."
    else
      # TODO render + flash
    end

  end

  def update
    if @email.update(email_params)
      redirect_to email_url(@email), notice: "Email was successfully updated." 
    else
      #  ??
    end
  end

  def destroy
    @email.destroy!
    redirect_to emails_url, notice: "Email was successfully destroyed." 
  end

  private
   # Use callbacks to share common setup or constraints between actions.
   def set_email
    @email = Email.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def email_params
    params.require(:email).permit(:object, :body)
  end
end
