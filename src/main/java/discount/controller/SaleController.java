package discount.controller;

import discount.repository.SaleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class SaleController {
    @Autowired
    private SaleRepository saleRepository;
}
