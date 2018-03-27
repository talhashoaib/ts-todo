module Api::V1
  class TodosController < ApiController
	  before_action :set_todo, only: [:show, :update, :destroy]

	  def index
	    @todos = Todo.all
	    json_response(@todos)
	  end

	  def create
	    @todo = Todo.create!(todo_params)
	    json_response(@todo, :created)
	  end

	  def show
	    json_response(@todo)
	  end

	  def update
	    @todo.update(todo_params)
	    head :no_content
	  end

	  def destroy
	    @todo.destroy
	    head :no_content
	  end

	  def video_uploaded
	  	# https://www.youtube.com/channel/UCGW4ycTR54jbCvCqo-obRSw

	  	@item = Item.create!(name: "Youtube", query: request.params.to_s, todo_id: 1)
	    # json_response(@item, :created)
	    # render :nothing => true, :status => 204 and return
	    render plain: request.params["hub.challenge"]
	  end

	  private

	  def todo_params
	    params.permit(:title, :created_by)
	  end

	  def set_todo
	    @todo = Todo.find(params[:id])
	  end
	end

end