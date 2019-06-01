class AttendancesController < InheritedResources::Base

  private

    def attendance_params
      params.require(:attendance).permit(:presence, :description, :excused)
    end

end
