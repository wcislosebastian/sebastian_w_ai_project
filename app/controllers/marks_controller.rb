class MarksController < InheritedResources::Base

  private

    def mark_params
      params.require(:mark).permit(:mark, :description)
    end

end
