ActiveAdmin.register Customer do

  config.filters = false

  sidebar :filters, only: :index do 
  end

  # defined parameters
  permit_params :full_name, :phone_number, :email_address, :notes, :image


  

  



  # the input form parameters
  
  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file 
    end
    f.actions
  end










  # create the page for input
  show do 
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |customer|
        if customer.image.attached?
          image_tag url_for(customer.image), style: "max-width: 200px;"
        end
      end
    end
  end

end
