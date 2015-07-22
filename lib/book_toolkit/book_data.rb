module BookToolkit
  class BookData
    attr_accessor :name, :author, :edition, :publisher, :isbn, :url,
                  :api_data_url, :revision

    def initialize args={}
      args.each{ |k, v| send("#{k}=v") }

      if !@isbn.nil?
        @isbn = BookToolkit.to_isbn13 @isbn
      end
    end

  end
end

