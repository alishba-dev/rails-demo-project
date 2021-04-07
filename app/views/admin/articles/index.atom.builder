atom_feed do |feed|
  feed.title("Articles Index")
  feed.updated(@articles.first.created_at)

  @articles.each do |article|
    feed.entry(article) do |entry|
      entry.title(article.heading)
      entry.content(article.body, type: 'html')

      entry.author do |author|
        author.name('Anonymus')
      end
    end
  end
end
