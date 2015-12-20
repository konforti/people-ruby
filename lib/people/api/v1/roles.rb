module People
  module Api
    module V1
      module Roles
        def roles
          path = 'api/v1/roles/'
          get(path)
        end

        # alias_method :get_roles, :roles

        def role(rid)
          path = "api/v1/roles/#{rid}"
          get(path)
        end

        alias_method :get_role, :role

      end
    end
  end
end
