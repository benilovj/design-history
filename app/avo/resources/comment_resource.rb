class CommentResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :body, as: :textarea
  field :email, as: :text
  field :name, as: :text
  field :commentable_id, as: :number
  field :commentable_type, as: :text
  # add fields here
end