package ram.services.rest;


import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by ram on 12/13/2017
 */
@RestController
@RequestMapping("/api")
public class AppController {

    @RequestMapping(path = "/test", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.GET)
    public Map helloWorld(){
        Map result = new HashMap();
        result.put("name", "to be released for staging");
        return result;
    }
    
    @RequestMapping(path = "/test2", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.GET)
    public Map helloWorld2(){
        Map result = new HashMap();
        result.put("name", "added test2 end point");
        return result;
    }
}
