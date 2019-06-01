class NotesController < InheritedResources::Base

  private

    def note_params
      params.require(:note).permit(:note, :valid)
    end

end
