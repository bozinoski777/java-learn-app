class MaterialsController < ApplicationController
    def index
        @materials = Material.all
        @mreport = Mreport.new
        @images = {"Java Building Blocks": "https://res.cloudinary.com/dj9iphc8u/image/upload/c_scale,w_1456/v1653941157/Sopra_Steria/fernando-hernandez-efzwcMRM6j4-unsplash_g51ogr.jpg",
                    "Operators and Statements": "https://res.cloudinary.com/dj9iphc8u/image/upload/c_scale,w_1043/v1653941156/Sopra_Steria/danial-igdery-FCHlYvR5gJI-unsplash_hvi31q.jpg",
                    "Core Java APIs": "https://res.cloudinary.com/dj9iphc8u/image/upload/c_scale,w_899/v1653941148/Sopra_Steria/simon-abrams-k_T9Zj3SE8k-unsplash_svsrma.jpg",
                    "Methods and Encapsulation": "https://res.cloudinary.com/dj9iphc8u/image/upload/c_scale,w_1132/v1653412708/Sopra_Steria/glenn-carstens-peters-npxXWgQ33ZQ-unsplash_u6kfap.jpg",
                    "Class Design": "https://res.cloudinary.com/dj9iphc8u/image/upload/c_scale,w_970/v1653941149/Sopra_Steria/arif-riyanto-vJP-wZ6hGBg-unsplash_imyzld.jpg",
                    "Exceptions": "https://res.cloudinary.com/dj9iphc8u/image/upload/c_scale,w_1140/v1653941153/Sopra_Steria/sigmund-Im_cQ6hQo10-unsplash_s55hou.jpg"}
        @mreports= Mreport.all
    end


    def new
        @mreport = Mreport.new
    end
  
    def create
        @mreport = Mreport.new(mreport_params)
        @mreport.save
        if @mreport.save
            redirect_to materials_path
        else
            render :new
        end
    end

    private

    def mreport_params
    params.require(:mreport).permit(:material_confidece, :is_known, :material_id, :user_id)
    end

end
