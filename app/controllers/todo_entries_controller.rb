class TodoEntriesController < ApplicationController
  def index
    @todo_entries = TodoEntry.all
  end

  def show
    @todo_entries = TodoEntry.find(params[:id])
  end

  def new
    @todo_entries = TodoEntry.new
  end

  def create
    @todo_entries = TodoEntry.new(todo_params)

    if @todo_entries.save
      redirect_to @todo_entries
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @todo_entries = TodoEntry.find(params[:id])
  end

  def update
    @todo_entries = TodoEntry.find(params[:id])
    if @todo_entries.update(todo_params)
      redirect_to @todo_entries
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def todo_params
      params.require(:todo_entry).permit(:title, :body)
    end
end
