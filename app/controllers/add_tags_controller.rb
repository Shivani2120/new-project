class AddTagsController < ApplicationController
    def create
        @tag = Tag.find(params[:tag_id])
        @add_tag = @tag.add_tags.build(add_tags_params)
        @add_tag.user = current_user
        if @add_tag.save
            respond_to do |format|
                format.html {redirect_to root_path}
                format.js { }
            end
        else
            render :new
        end
    end

    def destroy
        @tag = Tag.find(params[:tag_id])
        @add_tag = @tag.add_tags.find(params[:id]).destroy
        respond_to do |format|
            format.html {redirect_to root_path}
            format.js { }
        end 
    end

    def add_tags_params
        params.require(:add_tag).permit(:content)
    end

end
