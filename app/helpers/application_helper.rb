module ApplicationHelper

  def submit_button(form_builder)
    form_builder.button :submit, "Valider", class: "small secondary" 
  end

end
