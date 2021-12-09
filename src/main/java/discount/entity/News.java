package discount.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class News {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idnews;

    private String name;
    private String description;
    private String date;

    public Long getIdnews() {
        return idnews;
    }

    public void setIdnews(Long idnews) {
        this.idnews = idnews;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public News() {
    }

    public News(String name, String description, String date) {
        this.name = name;
        this.description = description;
        this.date = date;
    }
}
