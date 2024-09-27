class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;
  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear) : pagesRead = 0 {
    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    return pagesRead;
  } 

  String getTitle() {
    return title;
  } 

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  var book1 = Book("The Magicians", "Lev Grossman", 2009);
  var book2 = Book("Death on the Nile", "Agatha Christie", 1937);
  var book3 = Book("The Big Sleep", "Raymond Chandler", 1939);

  book1.read(100);
  book2.read(200);
  book3.read(120);

  print("Title: ${book1.getTitle()}");
  print("Author: ${book1.getAuthor()}");
  print("Publication Year: ${book1.getPublicationYear()}");
  print("Pages Read: ${book1.getPagesRead()}");
  print("Book Age: ${book1.getBookAge()} years");
  print("\n");

  print("Title: ${book2.getTitle()}");
  print("Author: ${book2.getAuthor()}");
  print("Publication Year: ${book2.getPublicationYear()}");
  print("Pages Read: ${book2.getPagesRead()}");
  print("Book Age: ${book2.getBookAge()} years");
  print("\n");

  print("Title: ${book3.getTitle()}");
  print("Author: ${book3.getAuthor()}");
  print("Publication Year: ${book3.getPublicationYear()}");
  print("Pages Read: ${book3.getPagesRead()}");
  print("Book Age: ${book3.getBookAge()} years");
  print("\n");

  print("Total number of Books: ${Book.totalBooks}");
}