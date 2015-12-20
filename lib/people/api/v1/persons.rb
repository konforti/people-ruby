module People
  module Api
    module V1
      module Persons

        # Users list
        def persons(*args)
          path = '/api/v1/persons/'
          path += "?search=#{args['search']}" if args.include? 'search'
          path += "?limit=#{args['limit']}" if args.include? 'limit'
          path += "?page=#{args['page']}" if args.include? 'page'
          path += "?sort=#{args['sort']}" if args.include? 'sort'
          get(path)
        end

        alias_method :get_persons, :persons
        alias_method :get_users, :persons

        # Get User.
        def person(id)
          path = "/api/v1/persons/#{id}"
          get(path)
        end

        alias_method :get_person, :person
        alias_method :get_user, :person

        # Get the Current User
        def current_person
          jwt = cookies['people.jwt']
          path = "/api/v1/persons/current/#{jwt}"
          get(path)
        end

        alias_method :get_current_person, :current_person
        alias_method :get_current_user, :current_person

        def update_person(id, payload)
          path = "/api/v1/persons/#{id}"
          put(path, query: payload)
        end

        alias_method :update_user, :update_person

        def person_add_role(id, role)
          path = "/api/v1/persons/#{id}/roles"
          post(path, query: role)
        end

        alias_method :user_add_role, :person_add_role

        def person_remove_role(id, role)
          path = "/api/v1/persons/#{id}/roles/#{role}"
          delete(path)
        end

        alias_method :user_add_role, :person_add_role

      end
    end
  end
end
