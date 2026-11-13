class IdeasController < ApplicationController
  # index is an action(method) commonly used to display a list of records
  # instance variables declared inside a controller action are accessible in the corresponding view. So our index.html.erb can use @ideas to display the database records.
  def index
    # Idea.all fetches all idea records from PostgreSQL. @ideas stores the returned records. @ideas is an instance variable.
    @pagy, @ideas = pagy(Idea.order("created_at DESC"))
  end
  # Idea.order("created_at DESC"): Fetches ideas with the newest ideas first.
  # pagy(...): Divides the ideas into pages.
  # @pagy: Stores pagination information, such as the current page and total pages.
  # @ideas: Stores only the ideas for the current page.

  # Strong Parameters protect our database by allowing only approved fields.
  # When handling information in the server, you should always use strong parameters to whitelist what data can go into your application.
  def create
    @idea = Idea.create(idea_params)
    # validation
    if @idea.valid?
      flash[:success] = "Your idea has been posted"
    else
      flash[:alert] = "Woops! looks like there has been an error"
    end

    redirect_to root_path
    # send the user back to homepage after submitting form
  end

  # edit displays the existing idea in an edit form.
  # update processes the submitted form and saves the changes.
  def edit
    @idea = Idea.find(params[:id])
  end

  def update
     @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
      flash[:success] = "The idea has been updated!"
      redirect_to root_path
    else
      flash[:alert] = "Woops! Looks like there has been an error!"
      redirect_to edit_idea_path(params[:id])
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy

     flash[:success] = "The idea was successfully deleted!"

    redirect_to root_path
  end

  private

  def idea_params
    params.require(:idea).permit(:description, :author)
  end
end


# Controller:	Handles requests and decides what should happen
