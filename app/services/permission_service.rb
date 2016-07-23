class PermissionService
  def self.allow?(user:, controller:, action:)
    return true if controller == 'sessions' && action == 'new'
    return true if controller == 'users' && action == 'new' || action == 'create'
    return true if user
  end
end
