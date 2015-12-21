class AdminAccount < ActiveRecord::Base

  has_many :admin_accounts_admins,
           class_name: "AdminAccountsAdmins",
           foreign_key: "admin_account_id",
           dependent: :destroy

  has_many :admins, through: :admin_accounts_admins, source: :admin


  has_many :admin_accounts_teachers,
            class_name: "AdminAccountsTeachers",
            foreign_key: "admin_account_id",
            dependent: :destroy

  has_many :teachers, through: :admin_accounts_teachers, source: :teacher

end
