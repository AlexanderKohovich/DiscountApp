package discount.entity;

import javax.persistence.*;

@Entity
@Table(name = "nomenclatures")
public class Nomenclature {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idnomenclature;

    private String nomenclaturename;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idsale")
    private Sale sale;

    public Long getIdnomenclature() {
        return idnomenclature;
    }

    public void setIdnomenclature(Long idnomenclature) {
        this.idnomenclature = idnomenclature;
    }

    public String getNomenclaturename() {
        return nomenclaturename;
    }

    public void setNomenclaturename(String nomenclaturename) {
        this.nomenclaturename = nomenclaturename;
    }

    public Sale getSale() {
        return sale;
    }

    public void setSale(Sale sale) {
        this.sale = sale;
    }

    public Nomenclature() {
    }
}
