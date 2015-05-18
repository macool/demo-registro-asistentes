class AsistentesController < ApplicationController
  before_action :set_asistente, only: [:edit, :update, :destroy]

  def index
    @asistentes = Asistente.all
  end

  def new
    @asistente = Asistente.new
  end

  def edit
  end

  def create
    @asistente = Asistente.new(asistente_params)

    if @asistente.save
      redirect_to asistentes_url, notice: 'Asistente creado.'
    else
      render :new
    end
  end

  def update
    if @asistente.update(asistente_params)
      redirect_to asistentes_url, notice: 'Asistente actualizado.'
    else
      render :edit
    end
  end

  def destroy
    @asistente.destroy
    redirect_to asistentes_url, notice: 'Asistente eliminado.'
  end

  private

  def set_asistente
    @asistente = Asistente.find(params[:id])
  end

  def asistente_params
    params.require(:asistente).permit(:nombres, :apellidos, :correo, :fecha_nacimiento, :cedula, :direccion, :telefono, :forma_pago)
  end
end
