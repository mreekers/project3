class Crim < ActiveRecord::Base

   

    def self.search(search)
        search_condition = "%" + search + "%"
        find(:all, :conditions => ['statute LIKE ? OR juryinst LIKE ? OR notes LIKE ?', search_condition, search_condition])
    end
end
