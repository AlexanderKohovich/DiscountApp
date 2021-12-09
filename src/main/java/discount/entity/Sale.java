package discount.entity;

import javax.persistence.*;

@Entity
@Table(name = "sales")
public class Sale {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idsale;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idmarket")
    private Market market;

    private String salename;
    private String date_begin;
    private String date_end;
    private String percentage;

    public Long getIdsale() {
        return idsale;
    }

    public void setIdsale(Long idsale) {
        this.idsale = idsale;
    }

    public Market getMarket() {
        return market;
    }

    public void setMarket(Market market) {
        this.market = market;
    }

    public String getSalename() {
        return salename;
    }

    public void setSalename(String salename) {
        this.salename = salename;
    }

    public String getDate_begin() {
        return date_begin;
    }

    public void setDate_begin(String date_begin) {
        this.date_begin = date_begin;
    }

    public String getDate_end() {
        return date_end;
    }

    public void setDate_end(String date_end) {
        this.date_end = date_end;
    }

    public String getPercentage() {
        return percentage;
    }

    public void setPercentage(String percentage) {
        this.percentage = percentage;
    }

    public Sale() {
    }
}
