module ApplicationHelper
    def page_class
        classString = []
        if request.original_fullpath != "/"
            classString << "innerPage"
        else
            classString << "homepage"
        end
        classString.join(" ")
        #if user is logged inn, add "logged"
    end
end
