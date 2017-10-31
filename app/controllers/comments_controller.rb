class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_post
  before_action :authenticate_user!, except: [:show, :index]
  before_action :owned_comment, only: [:edit, :update, :destroy]

  # GET /comments/new
  def new
    @comment = @post.comments.build
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@post), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy


    @comment = @post.comments.find(params[:id])

    if @comment.user_id == current_user.id
      @comment.destroy
        respond_to do |format|
          format.html { redirect_to post_path(@post) }
          format.js
        end
     end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :score, :user_id, :post_id)
    end

    def set_post
      @post = Post.find(params[:post_id])
    end

    def owned_comment
      unless current_user == @comment.user
        flash[:alert] = "That comment doesn't belong to you!"
        redirect_to root_path
      end
    end
end
