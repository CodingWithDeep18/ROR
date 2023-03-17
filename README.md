1.) Difference between collection and member


collection routes are used for actions that don't require an ID parameter. These routes act on the collection of resources (e.g., listing all the records in the database), rather than a specific resource.
member routes are used for actions that require an ID parameter. These routes act on a specific resource (e.g., showing, updating, or deleting a specific record in the database).

resources :photos do
  collection do
    get 'search' # A collection route for searching photos
  end

  member do
    get 'preview' # A member route for previewing a photo
  end
end
