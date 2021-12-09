package discount.repository;

import org.springframework.data.repository.CrudRepository;
import discount.entity.Order;


public interface OrderRepository extends CrudRepository<Order,Long> {

}

