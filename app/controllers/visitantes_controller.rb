class VisitantesController < ApplicationController
  before_action :set_visitante, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /visitantes or /visitantes.json
  def index
    if params[:search]
      @visitantes = Visitante.search(params[:search])
    else
     @visitantes = Visitante.all
  end
end

  # GET /visitantes/1 or /visitantes/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name",
        formats: [:html],
        template: "visitantes/_visitante" ,
        layout:"wicked_pdf"
      end
    end
  end

  # GET /visitantes/new
  def new
    @visitante = Visitante.new
  end

  # GET /visitantes/1/edit
  def edit
  end

  # POST /visitantes or /visitantes.json
  def create
    @visitante = Visitante.new(visitante_params)

    respond_to do |format|
      if @visitante.save
        format.html { redirect_to visitante_url(@visitante), notice: "Visitante cadastrado com sucesso!" }
        format.json { render :show, status: :created, location: @visitante }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitantes/1 or /visitantes/1.json
  def update
    respond_to do |format|
      if @visitante.update(visitante_params)
        format.html { redirect_to visitante_url(@visitante), notice: "Cadastro atualizado com sucesso!" }
        format.json { render :show, status: :ok, location: @visitante }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitantes/1 or /visitantes/1.json
  def destroy
    @visitante.destroy!

    respond_to do |format|
      format.html { redirect_to visitantes_url, notice: "Cadastro excluído com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitante
      @visitante = Visitante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visitante_params
      params.require(:visitante).permit(:nome, :cpf, :rg, :tel, :data, :hora_inicial,:hora_termino, :concluida, :foto,:user_id ,:setor_id)
    end
end
