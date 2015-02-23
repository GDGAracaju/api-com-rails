class SpeakersController < ApplicationController
  before_action :set_speaker, only: [:edit, :update, :destroy]

  def index
    @speakers = Speaker.all
  end

  def new
    @speaker = Speaker.new
  end

  def create
    @speaker = Speaker.new(speaker_params)

    if @speaker.save
      redirect_to speakers_path
      flash['success'] = 'Palestrante cadastrado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @speaker.update(speaker_params)
      redirect_to speakers_path
      flash['success'] = 'Palestrante atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @speaker.destroy
    redirect_to speakers_path
    flash['success'] = 'Palestrante removido com sucesso.'
  end

  private

  def set_speaker
    @speaker = Speaker.find(params[:id])
  end

  def speaker_params
    params.require(:speaker).permit(:name, :bio, :gplus)
  end
end
