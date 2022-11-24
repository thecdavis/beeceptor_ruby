# frozen_string_literal: true

module BeeceptorRuby
  class Client
    module Resource
      # The History API can be used to retrieve and manage request history
      module History
        def get_request(request_id)
          request :get, "/requests/#{request_id}"
        end

        def list_requests
          request :get, '/requests'
        end

        def purge_request(request_id)
          request :delete, "/requests/#{request_id}"
        end

        def purge_requests
          request :delete, '/requests'
        end
      end
    end
  end
end
