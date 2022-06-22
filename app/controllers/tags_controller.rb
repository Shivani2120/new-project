class TagsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search].present?
      @tags = current_user.tags.joins(:user).where("tags.title Like ?", "%"+params[:search]+"%")
    else
      @tags = current_user.tags
    end
  end
 

  def edit
      @tag = current_user.tags.find(params[:id])
  end

  def edit_note
      @tag = current_user.tags.find(params[:id])
  end

  def show
      @tag = current_user.tags.find(params[:id])
  end

  def new
      @tag = current_user.tags.build
  end

  def create
      @user = current_user
      @tag = @user.tags.build(tag_params)
      @tag.save
      respond_to do |format|
        format.js do
          if @tag.valid?
            flash.now[:notice] = "Your tag was successfully created"
          else
            flash.now[:error] = "You tag was not created"
          end
        end
      end
  end
  
  def update_note
    @tag = current_user.tags.find(params[:id])
    @tag.update(tag_params)
    respond_to do |format|
      format.js do
        if @tag.valid?
          flash.now[:notice] = "Your note was successfully updated"
        else
          flash.now[:error] = "You note was not updated"
        end
      end
    end   
  end

  def update
      @tag = current_user.tags.find(params[:id])
      @tag.update(tag_params)
      respond_to do |format|
        format.js do
          if @tag.valid?
            flash.now[:notice] = "Your note was successfully saved"
          else
            flash.now[:error] = "You note was not saved"
          end
        end
      end   
  end

  def destroy
      @tag = current_user.tags.find(params[:id])
      @tag.destroy
      respond_to do |format|
        format.js do
          if @tag.valid?
            flash.now[:notice] = "Your tag was removed successfully "
          else
            flash.now[:error] = "You tag was not removed"
          end
        end
      end  
  end

  private
  def tag_params
      params.require(:tag).permit(:title, :content)
  end
  
end