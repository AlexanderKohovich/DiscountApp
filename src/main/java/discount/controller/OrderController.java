package discount.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import discount.entity.*;
import discount.repository.*;

import java.util.Map;
import java.util.Random;

@Controller
public class OrderController {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private CardRepository cardRepository;
    @Autowired
    private CertificateRepository certificateRepository;
    @Autowired
    private MarketRepository marketRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RegisteredCardRepository registeredCardRepository;


    @GetMapping("orderCard/{card}")
    public String goToOrderCard(@PathVariable Card card, Model model) {
       model.addAttribute("card", card);
       Iterable<Market> markets = marketRepository.findAll();
       model.addAttribute("markets", markets);
        return "orderAddCard";
    }

    @GetMapping("orderCertificate/{certificate}")
    public String goToOrderCertificate(@PathVariable Certificate certificate, Model model) {
        model.addAttribute("certificate", certificate);
        Iterable<Market> markets = marketRepository.findAll();
        model.addAttribute("markets", markets);

        return "orderAddCertificate";
    }

    //Заказ карты
    @PostMapping("addOrderCard")
    public String addOrderCard(@RequestParam("idcard") Card card, @RequestParam String date,
                               @RequestParam("idmarket") Market market, @RequestParam("iduser") User user){
        Order newOrder = new Order(date, card, null, market, user);
        orderRepository.save(newOrder);

        Random random = new Random();
        int diff = 99999999-11111111;
        int code = random.nextInt(diff + 1) + 11111111;
        RegisteredCard registeredCard = new RegisteredCard(user, code);
        registeredCardRepository.save(registeredCard);
        return  "redirect:/thanks";
    }

    //Заказ сертификата
    @PostMapping("addOrderCertificate")
    public String addOrderCertificate(@RequestParam("idcertificate") Certificate certificate, @RequestParam String date,
                                      @RequestParam("idmarket") Market market, @RequestParam("iduser") User user){
        Order newOrder = new Order(date, null, certificate, market, user);
        orderRepository.save(newOrder);
        return "redirect:/thanks";
    }

    @GetMapping("thanks")
    public String showThanks(Model model){
        return "thanks";
    }

    @GetMapping("orderCardList")
    public String orderCardList(Map<String, Object> model){
        Iterable<Order> orders = orderRepository.findAll();
        model.put("orders", orders);
        return "orderCardList";
    }

    @GetMapping("orderCertificateList")
    public String orderCertificateList(Map<String, Object> model) {
        Iterable<Order> orders = orderRepository.findAll();
        model.put("orders", orders);
        return "orderCertifList";
    }

    @PostMapping("orderDeleteCard")
    public String deleteOrderCard(@RequestParam("id") Order order, Map<String, Object> model){
        orderRepository.delete(order);
        Iterable<Order> orders = orderRepository.findAll();
        model.put("orders", orders);
        return "redirect:/orderCardList";
    }

    @PostMapping("orderDeleteCertificate")
    public String deleteOrderCertificate(@RequestParam("id") Order order, Map<String, Object> model){
        orderRepository.delete(order);
        Iterable<Order> orders = orderRepository.findAll();
        model.put("orders", orders);
        return "redirect:/orderCertificateList";
    }
}
