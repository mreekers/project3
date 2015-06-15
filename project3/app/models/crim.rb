class Crim < ActiveRecord::Base

    validates_presence_of :statute, :juryinst, :notes
    

    def self.search(search)

        if search
            where('statute LIKE ?', "%#{search}%")
        else
            where(:all)
        end

        # find(:all, :conditions => ['crims.statute LIKE ? OR crims.juryinst LIKE ? or crims.notes like ?', "%#{search}%"])
       

    end

  


end

# OR crims.juryinst LIKE ? or crims.notes like ?'