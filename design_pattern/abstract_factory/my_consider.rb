# 出版社が複数ある
# rubyとphpの本を出版している
class Publisher
  attr_reader :books
  def initialize(args)
    @company_name = args[:company_name]
    @books = [] #本のインスタンスを追加
  end

  def set_book(book)
    @books << book
  end
end

class Book
  def initialize(args)
    @author = args[:name]
    @title = args[:title]
  end

  def get_author
    @author
  end

  def get_title
    @title
  end
end

b = Book.new(name: "tarou", title: "goの本")
syuei = Publisher.new(company_name: "集英社")
syuei.set_book(b)
syuei.set_book(b)
puts syuei.books.map(&:get_author)
