package discount.controller;

import discount.entity.RegisteredCard;
import discount.entity.User;
import discount.repository.RegisteredCardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class RegisteredCardController {
    @Autowired
    RegisteredCardRepository registeredCardRepository;

    @GetMapping("regCard")
    public String regCard(Model model){
        registeredCardRepository.findAll();
        Iterable<RegisteredCard> registeredCards = registeredCardRepository.findAll();
        model.addAttribute("regCard", registeredCards);
        return "registrationCard";
    }

    @PostMapping("registrationCard")
    public String regCardConfirm(@RequestParam("code") int code, @RequestParam("iduser") User user){
        RegisteredCard registeredCard = new RegisteredCard(user, code);
        registeredCardRepository.save(registeredCard);
        return "redirect:/main";
    }
    
    @GetMapping("regCardList")
    public String getregCardList(Model model){
        Iterable<RegisteredCard> registeredCards = registeredCardRepository.findAll();
        model.addAttribute("regCars", registeredCards);
        return "regCardList";
    }

    @PostMapping("regCard/regCardDelete")
    public String deleteRegCard(@RequestParam("id") RegisteredCard registeredCard, Map<String, Object> model){
        registeredCardRepository.delete(registeredCard);
        Iterable<RegisteredCard> registeredCards = registeredCardRepository.findAll();
        model.put("registeredCards", registeredCards);
        return "redirect:/regCardList";
    }
}
