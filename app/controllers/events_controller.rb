class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @event.talks.build
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_path
      flash['success'] = 'Evento cadastrado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to events_path
      flash['success'] = 'Evento atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
    flash['success'] = 'Evento removido com sucesso.'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :event_date,
                                  talks_attributes: [:id, :title, :description,
                                                     :speaker_id, :_destroy])
  end
end
