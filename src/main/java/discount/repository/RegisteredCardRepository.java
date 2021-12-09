package discount.repository;

import discount.entity.RegisteredCard;
import org.springframework.data.repository.CrudRepository;

public interface RegisteredCardRepository extends CrudRepository<RegisteredCard, Long> {
}
