package discount.entity;

import javax.persistence.*;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idorder;

    private String date;

    //Карточка
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idcard")
    private Card card;

    //Сертификат
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idcertificate")
    private Certificate certificate;

    //Организация\филиал
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idmarket")
    private Market market;

    //Пользователь
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id")
    private User user;

    public Order(String date, Card card, Certificate certificate, Market market, User user) {
        this.date = date;
        this.card = card;
        this.certificate = certificate;
        this.market = market;
        this.user = user;
    }

    public Order() {
    }

    public Long getIdorder() {
        return idorder;
    }

    public void setIdorder(Long idorder) {
        this.idorder = idorder;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public Certificate getCertificate() {
        return certificate;
    }

    public void setCertificate(Certificate certificate) {
        this.certificate = certificate;
    }

    public Market getMarket() {
        return market;
    }

    public void setMarket(Market market) {
        this.market = market;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
