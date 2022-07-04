class Web::BoardsController < Web::ApplicationController
  before_action :authenticate_user!

  setup do
    user = create(:user)
    sign_in user
  end

  def show; end
end
