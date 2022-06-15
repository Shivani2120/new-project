class HomeController < ApplicationController
    if user_signed_in?
        redirect_to tags_path
    end
end
