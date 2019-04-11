void main() {
  var deck = new Deck();
  deck.shuffle();
	print(deck);
  print(deck.getLength());
}

class Deck {
  List<Card> cards = [];
  
  Deck() {
    var suits = ['Diamonds', 'Hearts', 'Spades', 'Clubs'];
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
    for (var suit in suits) {
      for (var rank in ranks) {
        cards.add(new Card(suit: suit,rank: rank));
      }
    }
  }
  
  void printCards() {
    cards.forEach(_printCard);
  }
  
  void _printCard(card) {
    print(card);
  }
  
  void shuffle() {
    cards.shuffle();
  }
  
  void deal(int handSize) {
    for(var i = 0; i < handSize; i++) {
      _printCard(cards.removeLast());
    }
  }
  
  void removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
  
  int getLength() {
    return cards.length;
  }
  
  void cardsWithSuit(String suit) {
    List<Card> filteredCards = cards.where((card) => card.suit == suit).toList();
    filteredCards.forEach(_printCard);
  }
  
  String toString() {
    return cards.toString();
  }
}

class Card {
  String suit;
  String rank;
  
  Card({this.suit, this.rank});
  
  String toString() {
    return '${rank} of ${suit}';
  }
}


