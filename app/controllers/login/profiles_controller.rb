class Login::ProfilesController < Login::ApplicationController
  before_action :set_profile

  def show
  end

  def edit
  end

  def create
    @profile.assign_attributes(profile_params)
    if @profile.save
      redirect_to login_profile_path, notice: 'Profile was successfully created.'
    else
      render :edit
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to login_profile_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_profile
      @profile = current_user.profile || current_user.build_profile
    end

    def profile_params
      params.require(:profile).permit(
        :id,
        :first_name,
        :last_name,
        :introduction,
        :image,
        :image_cache,
        :remove_image
      )
    end
end
