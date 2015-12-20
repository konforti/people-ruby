module People
  module HttpProxy
    %i(get post put patch delete).each do |method|
      define_method(method) do |path, body = {}|
        safe_path = URI.escape(path)
        body = body.delete_if { |_, v| v.nil? }
        if method == :get
          result = self.class.send(method, safe_path, query: body)
        else
          result = self.class.send(method, safe_path, body: body.to_json)
        end
        response_body =
          begin
            JSON.parse(result.body.to_s)
          rescue JSON::ParserError
            result.body
          end
        case result.code
          when 200...226 then response_body
          when 400 then fail People::BadRequest, response_body
          when 401 then fail People::Unauthorized, response_body
          when 403 then fail People::AccessDenied, response_body
          when 404 then fail People::NotFound, response_body
          when 500 then fail People::ServerError, response_body
          else
            fail People::Unsupported, response_body
        end
      end
    end
  end
end
