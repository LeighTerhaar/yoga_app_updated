class PosesController < ApplicationController
  def index
    @poses = Pose.all

    render("pose_templates/index.html.erb")
  end

  def show
    @pose = Pose.find(params.fetch("id_to_display"))

    render("pose_templates/show.html.erb")
  end

  def new_form
    @pose = Pose.new

    render("pose_templates/new_form.html.erb")
  end

  def create_row
    @pose = Pose.new

    @pose.yogaflow_id = params.fetch("yogaflow_id")
    @pose.name = params.fetch("name")
    @pose.sanskrit = params.fetch("sanskrit")
    @pose.picture = params.fetch("picture")

    if @pose.valid?
      @pose.save

      redirect_back(:fallback_location => "/poses", :notice => "Pose created successfully.")
    else
      render("pose_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @pose = Pose.find(params.fetch("prefill_with_id"))

    render("pose_templates/edit_form.html.erb")
  end

  def update_row
    @pose = Pose.find(params.fetch("id_to_modify"))

    @pose.yogaflow_id = params.fetch("yogaflow_id")
    @pose.name = params.fetch("name")
    @pose.sanskrit = params.fetch("sanskrit")
    @pose.picture = params.fetch("picture")

    if @pose.valid?
      @pose.save

      redirect_to("/poses/#{@pose.id}", :notice => "Pose updated successfully.")
    else
      render("pose_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @pose = Pose.find(params.fetch("id_to_remove"))

    @pose.destroy

    redirect_to("/poses", :notice => "Pose deleted successfully.")
  end
end
