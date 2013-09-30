class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
    @form = PersonForm.new(@person)
  end

  def edit
    @person = Person.find(params[:id])
    @form = PersonForm.new(@person)
  end

  def create
    @person = Person.new
    @form = PersonForm.new(@person)

    if @form.validate(params[:person]) && @form.save
      redirect_to people_url, notice: 'People was successfully created.'
    else
      render action: :new
    end
  end

  def update
    @person = Person.find(params[:id])
    @form = PersonForm.new(@person)

    if @form.validate(params[:person]) && @form.save
      redirect_to people_url, notice: 'People was successfully updated.'
    else
      render action: :edit
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_url
  end
end
