class PostsController < ApplicationController

  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end
  
  def contact_us
    
  end

  def destroy
  end

  def create
    @post = Post.new(post_params)
 
    respond_to do |format|
      if @post.save
        
        PostMailer.contact_us(@post).deliver_later
 
        format.html { redirect_to root_path }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  private

  def post_params
    params.require(:post).permit(:first_name, :last_name, :email, :phone, :message)
  end
end
