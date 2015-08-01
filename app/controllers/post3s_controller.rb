class Post3sController < ApplicationController
  before_action :set_post3, only: [:show, :edit, :update, :destroy]

  # GET /post3s
  # GET /post3s.json
  def index
    @post3s = Post3.all
  end

  # GET /post3s/1
  # GET /post3s/1.json
  def show
  end

  # GET /post3s/new
  def new
    @post3 = Post3.new
  end

  # GET /post3s/1/edit
  def edit
  end

  # POST /post3s
  # POST /post3s.json
  def create
    @post3 = Post3.new(post3_params)

    respond_to do |format|
      if @post3.save
        format.html { redirect_to @post3, notice: 'Post3 was successfully created.' }
        format.json { render :show, status: :created, location: @post3 }
      else
        format.html { render :new }
        format.json { render json: @post3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post3s/1
  # PATCH/PUT /post3s/1.json
  def update
    respond_to do |format|
      if @post3.update(post3_params)
        format.html { redirect_to @post3, notice: 'Post3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post3 }
      else
        format.html { render :edit }
        format.json { render json: @post3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post3s/1
  # DELETE /post3s/1.json
  def destroy
    @post3.destroy
    respond_to do |format|
      format.html { redirect_to post3s_url, notice: 'Post3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post3
      @post3 = Post3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post3_params
      params.require(:post3).permit(:title, :content)
    end
end
