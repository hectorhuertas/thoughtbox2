class PermissionService
  def self.allow?(user:, controller:, action:)
    return true if controller == 'sessions' && action == 'new'
  end
end
