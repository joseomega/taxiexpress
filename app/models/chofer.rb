class Chofer < ActiveRecord::Base
  belongs_to :auto
  def auto_placa   
    self.auto.Placa 
  end
end
