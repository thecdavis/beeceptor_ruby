# frozen_string_literal: true

module BeeceptorRuby
  class Client
    module Resource
      # The Rules API can be used to create, retrieve, update and delete mocking rules
      module Rules
        def create_rule(body)
          request :post, '/rules', body
        end

        def get_rule(rule_id)
          request :get, "/rules/#{rule_id}"
        end

        def list_rules
          request :get, '/rules'
        end

        def update_rule(rule_id, body)
          request :put, "/rules/#{rule_id}", body
        end

        def delete_rule(rule_id)
          request :delete, "/rules/#{rule_id}"
        end
      end
    end
  end
end
