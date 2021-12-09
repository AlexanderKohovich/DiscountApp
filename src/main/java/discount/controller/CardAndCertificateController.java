package discount.controller;

import discount.entity.Card;
import discount.entity.Certificate;
import discount.repository.CardRepository;
import discount.repository.CertificateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class CardAndCertificateController {
    @Autowired
    private CardRepository cardRepository;
    @Autowired
    private CertificateRepository certificateRepository;

    @GetMapping("/CandC")
    public String CandCpage(Map<String, Object> model) {
        Iterable<Card> cards = cardRepository.findAll();
        model.put("cards", cards);
        Iterable<Certificate> certificates = certificateRepository.findAll();
        model.put("certificates", certificates);
        return "CandC";
    }

    @GetMapping("/addNewCard")
    public String loadPage1() {
        return "addNewCard";
    }

    @GetMapping("/addNewCertificate")
    public String loadPage2() {
        return "addNewCertificate";
    }

    @PostMapping("addCertificate")
    public String addCertificate(@RequestParam("name") String name,
                                 @RequestParam("summ") String summ,
                                 @RequestParam("date") String date) {
        Certificate certificate = new Certificate(name, summ, date);
        certificateRepository.save(certificate);
        return "redirect:/main";
    }

    @PostMapping("addCard")
    public String addCard(@RequestParam("name") String name,
                          @RequestParam("sale") String sale,
                          @RequestParam("date") String date) {
        Card card = new Card(name, sale, date);
        cardRepository.save(card);
        return "redirect:/main";
    }

    @PostMapping("deleteCard")
    public String deleteCard(@RequestParam("id") Card card, Map<String, Object> model){
        cardRepository.delete(card);
       // Iterable<Card> cards = cardRepository.findAll();
        //model.put("cards", cards);
        return "redirect:/CandC";
    }

    @PostMapping("deleteCertificate")
    public String deleteCertificate(@RequestParam("id") Certificate certificate, Map<String, Object> model){
        certificateRepository.delete(certificate);
        //Iterable<Certificate> certificates = certificateRepository.findAll();
       // model.put("certificates", certificates);
        return "redirect:/CandC";
    }

}
