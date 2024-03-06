class Email < ApplicationRecord
  
  def read_btn_text
    if self.read
      "Marqué comme non lu"
    else
      "Marqué comme lu"
    end
  end

end
