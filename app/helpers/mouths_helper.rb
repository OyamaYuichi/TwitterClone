module MouthsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create' || action_name == 'confirm'
      confirm_mouths_path
    elsif action_name == 'edit'
      mouth_path
    end
  end
end
