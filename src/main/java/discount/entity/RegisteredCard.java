package discount.entity;

import javax.persistence.*;

@Entity
public class RegisteredCard {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idRegistered;

    //Владелец
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id")
    private User user;

    //Код карты
    private int code;

    public RegisteredCard(User user, int code) {
        this.user = user;
        this.code = code;
    }

    public Long getIdRegistered() {
        return idRegistered;
    }

    public void setIdRegistered(Long idRegistered) {
        this.idRegistered = idRegistered;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }


    public RegisteredCard() {
    }
}
