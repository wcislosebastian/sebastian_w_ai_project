class ClassTemplatesController < InheritedResources::Base

  private

    def class_template_params
      params.require(:class_template).permit(:name, :year, :semester, :archived)
    end

end
