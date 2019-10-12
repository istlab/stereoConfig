# Configure the system's users
class user {
  include user::users
  include user::groups

  Class['user::groups'] -> Class['user::users']
}
