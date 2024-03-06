class Email < ApplicationRecord
  
  def read_btn_label
    if self.read
      "Marqué comme non lu"
    else
      "Marqué comme lu"
    end
  end
end
