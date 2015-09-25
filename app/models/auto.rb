class Auto < ActiveRecord::Base
    has_many :chofer
    def auto_p   
    self.chofer.auto_placa 
  end
end
