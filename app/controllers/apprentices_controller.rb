class ApprenticesController < ApplicationController

  def index
    @apprentices = Apprentice.all
  end

  def show
    @apprentice = Apprentice.find(params[:id])
  end

  def new
    @apprentice = Apprentice.new
    @form = ApprenticeForm.new(@apprentice)
  end

  def edit
    @apprentice = Apprentice.find(params[:id])
    @form = ApprenticeForm.new(@apprentice)
  end

  def create
    @apprentice = Apprentice.new
    @form = ApprenticeForm.new(@apprentice)

    if @form.validate(params[:apprentice]) && @form.save
      redirect_to apprentices_url, notice: 'Apprentice was successfully created.'
    else
      render action: :new
    end
  end

  def update
    @apprentice = Apprentice.find(params[:id])
    @form = ApprenticeForm.new(@apprentice)

    if @form.validate(params[:apprentice]) && @form.save
      redirect_to apprentices_url, notice: 'Apprentice was successfully updated.'
    else
      render action: :edit
    end
  end

  def destroy
    @apprentice = Apprentice.find(params[:id])
    @apprentice.destroy
    redirect_to apprentices_url
  end
end
