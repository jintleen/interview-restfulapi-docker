class Post4sController < ApplicationController
  before_action :set_post4, only: [:show, :edit, :update, :destroy]

  # GET /post4s
  # GET /post4s.json
  def index
    @post4s = Post4.all
  end

  # GET /post4s/1
  # GET /post4s/1.json
  def show
  end

  # GET /post4s/new
  def new
    @post4 = Post4.new
  end

  # GET /post4s/1/edit
  def edit
  end

  # POST /post4s
  # POST /post4s.json
  def create
    @post4 = Post4.new(post4_params)

    respond_to do |format|
      if @post4.save
        format.html { redirect_to @post4, notice: 'Post4 was successfully created.' }
        format.json { render :show, status: :created, location: @post4 }
      else
        format.html { render :new }
        format.json { render json: @post4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post4s/1
  # PATCH/PUT /post4s/1.json
  def update
    respond_to do |format|
      if @post4.update(post4_params)
        format.html { redirect_to @post4, notice: 'Post4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post4 }
      else
        format.html { render :edit }
        format.json { render json: @post4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post4s/1
  # DELETE /post4s/1.json
  def destroy
    @post4.destroy
    respond_to do |format|
      format.html { redirect_to post4s_url, notice: 'Post4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post4
      @post4 = Post4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post4_params
      params.require(:post4).permit(:title, :content)
    end
end
