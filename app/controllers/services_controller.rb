class ServicesController < ApplicationController

    def new
        @service = Service.new
        @user = User.find_by({ "id" => params["user_id"] })
        @service["user_id"] = @user["id"]
    end
    
    def create
        @service = Service.new
        @service["date"] = params["service"]["date"]
        @service["dental_clinic"] = params["service"]["dental_clinic"]
        @service["patient"] = params["service"]["patient"]
        @service["procedure"] = params["service"]["procedure"]
        @service["total_payment"] = params["service"]["total_payment"]
        @service["income"] = params["service"]["income"]
        @contact.save
        # redirect_to "/companies/#{@contact["company_id"]}"
    end

    def index
        #@user = User.find_by({ "id" => params["user_id"] })
        #@services = Service.where({ "user_id" => session["user_id"] })
        @services = Service.all
    end
    

end
