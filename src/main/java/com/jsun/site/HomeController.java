package com.jsun.site;

import com.jsun.exception.InternationalizedException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Date;
import java.util.Map;

@Controller
public class HomeController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Map<String, Object> model) {
		model.put("date", new Date());
        model.put("alerts", 12);
        model.put("numCritical", 0);
        model.put("numImportant", 11);
        model.put("numTrivial", 1);
        model.put("exception",  new InternationalizedException("bad.food.exception",  "You at bad food."));
        
        return "home/index";
	}
}
