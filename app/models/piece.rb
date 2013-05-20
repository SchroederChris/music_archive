class Piece < ActiveRecord::Base
  attr_accessible :composer, :drawer, :number, :title
  validates :title, :composer, :drawer, :number, presence: true
  validates :title, uniqueness: true
  validates :number, numericality: {only_integer: true, greater_than: 0}
  validates :number, :uniqueness => {:scope => :drawer}

  def self.search(search)  
    if search
      search_ext = "%#{search}%"
      where('title LIKE ? OR composer like ?', search_ext, search_ext)  
    else  
      scoped  
    end  
  end  
end
