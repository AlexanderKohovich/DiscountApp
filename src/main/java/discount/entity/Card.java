package discount.entity;

import javax.persistence.*;

@Entity
@Table(name = "cards")
public class Card {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idcard;

    private String cardname;
    private String cardsale;
    private String cardexpiration;

    public Long getIdcard() {
        return idcard;
    }

    public void setIdcard(Long idcard) {
        this.idcard = idcard;
    }

    public String getCardname() {
        return cardname;
    }

    public void setCardname(String cardname) {
        this.cardname = cardname;
    }

    public String getCardsale() {
        return cardsale;
    }

    public void setCardsale(String cardsale) {
        this.cardsale = cardsale;
    }

    public String getCardexpiration() {
        return cardexpiration;
    }

    public void setCardexpiration(String cardexpiration) {
        this.cardexpiration = cardexpiration;
    }

    public Card() {
    }

    public Card(String cardname, String cardsale, String cardexpiration) {
        this.cardname = cardname;
        this.cardsale = cardsale;
        this.cardexpiration = cardexpiration;
    }
}
