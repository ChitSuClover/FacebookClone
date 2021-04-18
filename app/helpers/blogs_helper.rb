module BlogsHelper
  def choose_new_or_edit
    if action_name == "new" || action_name == "create"
      confirm_blogs_path
    else action_name == "edit"
      edit_blog_path
  end
end
