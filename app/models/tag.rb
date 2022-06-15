class Tag < ApplicationRecord
    has_many :add_tags
    belongs_to :user

    # def self.search(search)
    #     if search
    #       find{|tag| tag.title.include?("%#{search}%")}
    #     #   find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    #     else
    #       find(:all)
    #     end
    # end
end
