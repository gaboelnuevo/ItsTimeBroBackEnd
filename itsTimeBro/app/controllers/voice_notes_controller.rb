class VoiceNotesController < ApplicationController
  before_action :set_voice_note, only: [:show, :edit, :update, :destroy]

  # GET /voice_notes
  # GET /voice_notes.json
  def index
    @voice_notes = VoiceNote.all
  end

  # GET /voice_notes/1
  # GET /voice_notes/1.json
  def show
  end

  # GET /voice_notes/new
  def new
    @voice_note = VoiceNote.new
  end

  # GET /voice_notes/1/edit
  def edit
  end

  # POST /voice_notes
  # POST /voice_notes.json
  def create
    @voice_note = VoiceNote.new(voice_note_params)

    respond_to do |format|
      if @voice_note.save
        format.html { redirect_to @voice_note, notice: 'Voice note was successfully created.' }
        format.json { render :show, status: :created, location: @voice_note }
      else
        format.html { render :new }
        format.json { render json: @voice_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voice_notes/1
  # PATCH/PUT /voice_notes/1.json
  def update
    respond_to do |format|
      if @voice_note.update(voice_note_params)
        format.html { redirect_to @voice_note, notice: 'Voice note was successfully updated.' }
        format.json { render :show, status: :ok, location: @voice_note }
      else
        format.html { render :edit }
        format.json { render json: @voice_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_notes/1
  # DELETE /voice_notes/1.json
  def destroy
    @voice_note.destroy
    respond_to do |format|
      format.html { redirect_to voice_notes_url, notice: 'Voice note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voice_note
      @voice_note = VoiceNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voice_note_params
      params.require(:voice_note).permit(:alarma_id, :voiceNote, :usuario_id)
    end
end
