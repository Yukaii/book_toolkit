# {
#   "response": {
#     "status": "ok",
#     "version": "13",
#     "label": {
#       "plid": "0",
#       "name": "CampusBooks.com",
#       "website_id": "0",
#       "website_name": "CampusBooks.com"
#     },
#     "page": {
#       "name": "books",
#       "f": "search",
#       "books": {
#         "page": 1,
#         "limit": 1,
#         "results_returned": 1,
#         "total_pages": 1,
#         "total_results": 1,
#         "book": [
#           {
#             "isbn10": "0387290958",
#             "isbn13": "9780387290959",
#             "author": "",
#             "binding": "Hardcover",
#             "edition": "2006",
#             "image": {
#               "width": 50,
#               "height": 75,
#               "image": "http:\\/\\/ecx.images-amazon.com\\/images\\/I\\/512-hKSVzuL._SL75_.jpg"
#             },
#             "msrp": 219,
#             "pages": "308",
#             "publish_date": "2006-02-07",
#             "publisher": "Springer",
#             "rank": 2647173,
#             "rating": 0,
#             "title": "Orthogonal Frequency Division Multiplexing for Wireless Communications (Signals and Communication Technology)"
#           }
#         ]
#       }
#     }
#   }
# }

module BookToolkit
module ApiParser
  class CampusBooks
    def initialize
      # sample query_url:
      #  http://api2.campusbooks.com/13/rest/bookinfo?key=PA52HnTGaTSyizTOq4j1&isbn=9780387290959&format=json
      @host_url = "http://api2.campusbooks.com"
      @book_info_path = "/13/rest/bookinfo"
      @api_key = "PA52HnTGaTSyizTOq4j1"
    end
  end
end
end
