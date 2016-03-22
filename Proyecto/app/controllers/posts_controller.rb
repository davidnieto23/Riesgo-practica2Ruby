class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    #para mostrar solo los post del usuario actual
    @posts = Post.where(usuario_id: current_usuario.id).all
    puts "USUARIOOOO"
    puts current_usuario.to_json

    #@posts = Post.all
  end

  def donaste
    puts 'DONASTE'
puts params[:id]

@donacion = Post.find(params[:id])
#@donacion.candidato.create(current_usuario)
puts "YA DONASTE SANGREEE"
puts current_usuario.id
@donacion.donador_id = current_usuario.id
@donacion.solved = true
puts @donacion.donador_id
@donacion.save
current_usuario.donacion_id = params[:id]
puts "YA DONASTE SANGREEE y se salvo"
puts current_usuario.to_json
  end



  def postulate
      puts 'AL FIN'
      #puts current_usuario.donacion.update()

      @publicaciones = Post.where.not(usuario_id: current_usuario.id).all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.create(post_params)
    puts "LLLLLOOOOOOOLLLLLL"
    puts current_usuario.to_json
    @post = current_usuario.posts.create(post_params)
         
    @post.sangre = current_usuario.tipoDeSangre



    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def put

    puts "SOme someButton"
  end

  def donaciones
      @publicaciones = Post.where(donador_id: current_usuario.id).all

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:comentario,  :id)
    end

        # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit( :comentario,  :id)
    end


end
