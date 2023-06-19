class Plant < ApplicationRecord
    def datePlanted=(date_str)
        self[:datePlanted] = Date.strptime(date_str, '%m/%d/%y') 
    end
    
    def lastFertilized=(date_str)
        self[:lastFertilized] = Date.strptime(date_str, '%m/%d/%y')
    end

    # def needsFertilizer=(sf_str)
    #     self[:needsFertilizer] = (sf_str == "Yes")
    # end
end
