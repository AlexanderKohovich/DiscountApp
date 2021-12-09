package discount.entity;

import javax.persistence.*;

@Entity
@Table(name = "certificates")
public class Certificate {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idcertificate;
    private String namecertificate;
    private String summcertificate;
    private String expirationcertificate;

    public Long getIdcertificate() {
        return idcertificate;
    }

    public void setIdcertificate(Long idcertificate) {
        this.idcertificate = idcertificate;
    }

    public String getNamecertificate() {
        return namecertificate;
    }

    public void setNamecertificate(String namecertificate) {
        this.namecertificate = namecertificate;
    }

    public String getSummcertificate() {
        return summcertificate;
    }

    public void setSummcertificate(String summcertificate) {
        this.summcertificate = summcertificate;
    }

    public String getExpirationcertificate() {
        return expirationcertificate;
    }

    public void setExpirationcertificate(String expirationcertificate) {
        this.expirationcertificate = expirationcertificate;
    }

    public Certificate() {
    }

    public Certificate(String namecertificate, String summcertificate, String expirationcertificate) {
        this.namecertificate = namecertificate;
        this.summcertificate = summcertificate;
        this.expirationcertificate = expirationcertificate;
    }
}
