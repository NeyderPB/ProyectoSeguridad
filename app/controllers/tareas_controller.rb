class TareasController < ApplicationController

  before_action :authenticate_usuario!, except: [:show,:index]
  before_action :set_tarea, except: [:index, :new, :create]

  def index
  	@tareas= Tarea.all
  end

  def show
    @comentario= Comentario.new
  end

  def new
  	@tarea= Tarea.new
  end

  def create
  	@tarea= current_usuario.tareas.new(tarea_params)
  	
  	if @tarea.save
      TareaMailer.notify.deliver_later!
  		redirect_to @tarea
  	else
  		render :new
  	end
  end

  def destroy
      @tarea.destroy
    redirect_to tareas_path
  end

  def edit

  end

 

  def update
  	
  	if @tarea.update(tarea_params)
  		redirect_to @tarea
  	else
  		render :edit
  	end	
  end

  private

  	def tarea_params
  		params.require(:tarea).permit(:titulo, :descripcion)
  	end

    def set_tarea
      @tarea= Tarea.find(params[:id])
    end
end