author = Author.create(name: 'Yukihiro Matsumoto')
Author.create(name: 'David Heinemeier Hansson')
Author.create(name: 'José Valim')
Book.create(title: 'The Ruby Programming Language', author: author)
Book.create(title: 'Ruby Best Practices', author: author)