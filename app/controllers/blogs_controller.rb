class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]
  layout false, only: %i[new edit]

  # GET /blogs
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  def show
  end

  # GET /blogs/new
  def new
    render Views::Blogs::Editor.new(Blog.new)
  end

  # GET /blogs/1/edit
  def edit
    render Views::Blogs::Editor.new(@blog)
  end

  # POST /blogs
  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog, notice: "Blog was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /blogs/1
  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: "Blog was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy!
    redirect_to blogs_path, notice: "Blog was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.expect(blog: [ :title, :content, :published_at ])
    end
end
