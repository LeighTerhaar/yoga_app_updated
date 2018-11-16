class FriendsController < ApplicationController
  def index
    @friends = Friend.all

    render("friend_templates/index.html.erb")
  end

  def show
    @friend = Friend.find(params.fetch("id_to_display"))

    render("friend_templates/show.html.erb")
  end

  def new_form
    @friend = Friend.new

    render("friend_templates/new_form.html.erb")
  end

  def create_row
    @friend = Friend.new

    @friend.follower_id = params.fetch("follower_id")
    @friend.leader_id = params.fetch("leader_id")

    if @friend.valid?
      @friend.save

      redirect_back(:fallback_location => "/friends", :notice => "Friend created successfully.")
    else
      render("friend_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @friend = Friend.find(params.fetch("prefill_with_id"))

    render("friend_templates/edit_form.html.erb")
  end

  def update_row
    @friend = Friend.find(params.fetch("id_to_modify"))

    @friend.follower_id = params.fetch("follower_id")
    @friend.leader_id = params.fetch("leader_id")

    if @friend.valid?
      @friend.save

      redirect_to("/friends/#{@friend.id}", :notice => "Friend updated successfully.")
    else
      render("friend_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @friend = Friend.find(params.fetch("id_to_remove"))

    @friend.destroy

    redirect_to("/friends", :notice => "Friend deleted successfully.")
  end
end
