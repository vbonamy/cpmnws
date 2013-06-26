/**
 * Licensed to Universite de Rouen under one or more contributor license
 * agreements. See the NOTICE file distributed with this work for
 * additional information regarding copyright ownership.
 *
 * Universite de Rouen licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package fr.normandieuniv.cpmnws.web;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.normandieuniv.cpmnws.db.CpmnPerso;
import fr.normandieuniv.cpmnws.services.CpmnWsSearchService;

@RequestMapping("/searchwstest/**")
@Controller
public class WsSearchServiceTestController {

	@Resource
	CpmnWsSearchService cpmnWsSearchService;
    
    @RequestMapping(value="search", method = RequestMethod.GET)
    public String searchWs(@RequestParam(required=false) BigDecimal anneeUniv, @RequestParam(required=false) BigDecimal noIndividu, @RequestParam(required=false) String nom, @RequestParam(required=false) Integer operator, Model uiModel) {
    	List<CpmnPerso> cpmnpersoes = cpmnWsSearchService.search(anneeUniv, noIndividu, nom, operator);
        uiModel.addAttribute("cpmnpersoes", cpmnpersoes);
        return "cpmnpersos/list";
    }
    
    @RequestMapping
    public String index() {
        return "searchwstest/index";
    }
}
