require 'test_helper'

class VoiceNotesControllerTest < ActionController::TestCase
  setup do
    @voice_note = voice_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voice_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voice_note" do
    assert_difference('VoiceNote.count') do
      post :create, voice_note: { alarma_id: @voice_note.alarma_id, usuario_id: @voice_note.usuario_id, voiceNote: @voice_note.voiceNote }
    end

    assert_redirected_to voice_note_path(assigns(:voice_note))
  end

  test "should show voice_note" do
    get :show, id: @voice_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voice_note
    assert_response :success
  end

  test "should update voice_note" do
    patch :update, id: @voice_note, voice_note: { alarma_id: @voice_note.alarma_id, usuario_id: @voice_note.usuario_id, voiceNote: @voice_note.voiceNote }
    assert_redirected_to voice_note_path(assigns(:voice_note))
  end

  test "should destroy voice_note" do
    assert_difference('VoiceNote.count', -1) do
      delete :destroy, id: @voice_note
    end

    assert_redirected_to voice_notes_path
  end
end
