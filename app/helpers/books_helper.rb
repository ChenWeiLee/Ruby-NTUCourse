module BooksHelper


def book_color(book)
	if book.price < 100
		return "<span style='color:red'>#{book.price}</span>".html_safe	
	else
		return book.price
	end

end

end
