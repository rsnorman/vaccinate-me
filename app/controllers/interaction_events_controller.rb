class InteractionEventsController < ApplicationController
  before_action :set_interaction_event, only: [:show, :edit, :update, :destroy]

  # GET /interaction_events
  # GET /interaction_events.json
  def index
    @interaction_events = InteractionEvent.all
  end

  # GET /interaction_events/1
  # GET /interaction_events/1.json
  def show
  end

  # GET /interaction_events/new
  def new
    @interaction_event = InteractionEvent.new
  end

  # GET /interaction_events/1/edit
  def edit
  end

  # POST /interaction_events
  # POST /interaction_events.json
  def create
    @interaction_event = InteractionEvent.new(interaction_event_params)

    respond_to do |format|
      if @interaction_event.save
        format.html { redirect_to @interaction_event, notice: 'Interaction event was successfully created.' }
        format.json { render :show, status: :created, location: @interaction_event }
      else
        format.html { render :new }
        format.json { render json: @interaction_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interaction_events/1
  # PATCH/PUT /interaction_events/1.json
  def update
    respond_to do |format|
      if @interaction_event.update(interaction_event_params)
        format.html { redirect_to @interaction_event, notice: 'Interaction event was successfully updated.' }
        format.json { render :show, status: :ok, location: @interaction_event }
      else
        format.html { render :edit }
        format.json { render json: @interaction_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interaction_events/1
  # DELETE /interaction_events/1.json
  def destroy
    @interaction_event.destroy
    respond_to do |format|
      format.html { redirect_to interaction_events_url, notice: 'Interaction event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interaction_event
      @interaction_event = InteractionEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def interaction_event_params
      params.require(:interaction_event).permit(:event_type_id, :interaction_id)
    end
end
