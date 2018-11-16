class YogaflowsController < ApplicationController
  before_action :current_user_must_be_yogaflow_user, :only => [:edit_form, :update_row, :destroy_row]

  def current_user_must_be_yogaflow_user
    yogaflow = Yogaflow.find(params["id_to_display"] || params["prefill_with_id"] || params["id_to_modify"] || params["id_to_remove"])

    unless current_user == yogaflow.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @yogaflows = Yogaflow.all

    render("yogaflow_templates/index.html.erb")
  end

  def show
    @favorite = Favorite.new
    @pose = Pose.new
    @yogaflow = Yogaflow.find(params.fetch("id_to_display"))

    render("yogaflow_templates/show.html.erb")
  end

  def new_form
    @yogaflow = Yogaflow.new

    render("yogaflow_templates/new_form.html.erb")
  end

  def create_row
    @yogaflow = Yogaflow.new

    @yogaflow.user_id = params.fetch("user_id")
    @yogaflow.title = params.fetch("title")
    @yogaflow.intention = params.fetch("intention")
    @yogaflow.description = params.fetch("description")
    @yogaflow.yogatype = params.fetch("yogatype")

    if @yogaflow.valid?
      @yogaflow.save

      redirect_back(:fallback_location => "/yogaflows", :notice => "Yogaflow created successfully.")
    else
      render("yogaflow_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @yogaflow = Yogaflow.find(params.fetch("prefill_with_id"))

    render("yogaflow_templates/edit_form.html.erb")
  end

  def update_row
    @yogaflow = Yogaflow.find(params.fetch("id_to_modify"))

    
    @yogaflow.title = params.fetch("title")
    @yogaflow.intention = params.fetch("intention")
    @yogaflow.description = params.fetch("description")
    @yogaflow.yogatype = params.fetch("yogatype")

    if @yogaflow.valid?
      @yogaflow.save

      redirect_to("/yogaflows/#{@yogaflow.id}", :notice => "Yogaflow updated successfully.")
    else
      render("yogaflow_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @yogaflow = Yogaflow.find(params.fetch("id_to_remove"))

    @yogaflow.destroy

    redirect_to("/users/#{@yogaflow.user_id}", notice: "Yogaflow deleted successfully.")
  end

  def destroy_row
    @yogaflow = Yogaflow.find(params.fetch("id_to_remove"))

    @yogaflow.destroy

    redirect_to("/yogaflows", :notice => "Yogaflow deleted successfully.")
  end
end
