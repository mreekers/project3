class Crim < ActiveRecord::Base


    def self.search(search)

        if search
            find(:all, :joins => :category, :conditions => ['crims.statute LIKE ? OR crims.juryinst LIKE ? or crims.notes like ?', "%#{search}%", "%#{search}%", "%#{search}%"])
        else
            find(:all)
        end

    end


    # def self.search(query)
    #     if query.present?
    #         where("statute ilike :q or juryinst ilike :q", q: "%#{query}%")

       

    #     end  
    # end

    # validates_presence_of :statute
    
    # def self.search(search)
        
    # end
    # def self.search(search)
    #     if search
    #         self.where('name LIKE ?', "%#{search}%")
    #     else
    #         self.all
    #     end
    # end
end




#'statute LIKE ?',

    # def self.search(search)
    #     search_condition = "%" + search + "%"
    #     find(:all, :conditions => ['statute LIKE ? OR juryinst LIKE ? OR notes LIKE ?', search_condition, search_condition])
    # end