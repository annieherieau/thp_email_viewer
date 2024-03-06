class EmailsController < ApplicationController
  before_action :set_email, only: %i[ index show edit update destroy ]
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
    check_save = true
    nb= 0
    rand(1..4).times do |i|
      @email = Email.new(object: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraph(sentence_count: rand(3..10)),
      read: false)
      check_save = false if !@email.save
      nb += 1
    end
      if check_save
        redirect_to emails_url, notice: "Vous avez reçu #{nb} nouveau(x) email(s)"
      else
        redirect_to emails_url, alert: "Une erreur s'est produite"
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
    params[:id] ? @email = Email.find(params[:id]) : @email = Email.last
  end

  # Only allow a list of trusted parameters through.
  def email_params
    params.require(:email).permit(:object, :body, :read)
  end
end
