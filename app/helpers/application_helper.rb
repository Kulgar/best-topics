module ApplicationHelper
  def submit_button(form_builder)
    form_builder.button :submit, "Valider", class: "small success"
  end

  def can_manage?(data)
    user_signed_in? && current_user.can_manage?(data)
  end
end
