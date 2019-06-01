class RealClassesController < InheritedResources::Base

  private

    def real_class_params
      params.require(:real_class).permit(:name, :year, :semester, :active, :start_date, :end_date)
    end

end
