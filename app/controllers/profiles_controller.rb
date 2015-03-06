class ProfilesController < ApplicationController
  before_action :authenticate_user!
  expose_decorated(:profile, decorator: UserDecorator) { current_user }
  expose_decorated(:reviews) { current_user.recently_reviews }
end
