module Resolvers
  class CreateSurveyResolver < Resolvers::BaseResolver
    def resolve(args)
      raise GraphQL::ExecutionError, "Permission Denied" unless context[:current_user]&.coordinator?

      # Código para criar a pesquisa
      Survey.create!(args)
    end
  end
end
