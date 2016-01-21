class HomeController < ApplicationController
  def index
      @entries = User.pluck(:username, :entry)
  end
  def entry
  end
  def newentry
      @user = current_user
      @user.entry = params[:entry][:entry]
      if @user.save
        flash[:notice] = "Successfully entered!"
        return redirect_to root_path
      else
          flash[:error] = "Failed to save entry, please try again"
          return render :entry
      end
  end
end
