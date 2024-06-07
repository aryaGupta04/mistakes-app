class UsersDatatable < Datatable
  delegate :edit_user_path, to: :@view
  delegate :user_path, to: :@view
  def as_json(_options = {})
    {
      data: data,
      draw: params[:draw].to_i,
      recordsTotal: User.count,
      recordsFiltered: users.length
    }
  end
  private
  def data
    users.map do |user|
      [
        user.id,
        user.email,
        user.name,
        user.created_at,
        user.mistakes.count,
        link_to("Edit", edit_user_path(user.id)),
        link_to("Delete", user_path(user.id), method: :delete, data: {confirm:"Are you sure you want to delete this user?"})
        
      ]
    end

  end
  def columns
    @columns ||= %w['' '']
  end
  def users
    @users ||= fetch_users
  end
  def fetch_users
    users = User.all
    users
  end
end