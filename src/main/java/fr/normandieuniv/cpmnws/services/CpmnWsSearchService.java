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
package fr.normandieuniv.cpmnws.services;

import java.math.BigDecimal;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import fr.normandieuniv.cpmnws.db.CpmnPerso;

@WebService
@Service
public class CpmnWsSearchService {

	private static Logger log = Logger.getLogger(CpmnWsSearchService.class);

	@WebMethod
	public List<CpmnPerso> search(@WebParam(name = "anneeUniv") BigDecimal anneeUniv, @WebParam(name = "noIndividu") BigDecimal noIndividu, @WebParam(name = "nom") String nom,
			@WebParam(name = "operator") Integer operator) {

		long startTime = System.currentTimeMillis();	
		log.info("search(" + anneeUniv + ", " + noIndividu + ", " + nom + ", " + operator + ")");
		
		if(nom != null && nom.trim().isEmpty())
			nom = null;
		
		
		List<CpmnPerso> urcpmns = null;

		if (anneeUniv == null) {
			throw new RuntimeException("Le paramètre anneeUniv doit être renseigné");
		}

		if (noIndividu == null && nom == null) {
			urcpmns = CpmnPerso.findCpmnPersoesByAnneeUnivEquals(anneeUniv)
					.getResultList();
		}

		else if (noIndividu != null && nom == null) {
			urcpmns = CpmnPerso.findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEquals(anneeUniv, noIndividu).getResultList();
		}

		else if (noIndividu == null && nom != null) {
			if (nom.length() >= 4) {
				nom = nom + '%';
			}
			urcpmns = CpmnPerso.findCpmnPersoesByAnneeUnivEqualsAndNomCarteLike(
						anneeUniv, nom).getResultList();
		}

		else if (noIndividu != null && nom != null) {
			if (operator == null) {
				throw new RuntimeException("noIndividu et nom sont renseignés, operator doit être renseigné et doit être égal à 0 ou 1");
			}
			if (operator.equals(0)) {
				if (nom.length() >= 4) {
					nom = nom + '%';
				}
				urcpmns = CpmnPerso.findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsAndNomCarteLike(
									anneeUniv,noIndividu, nom).getResultList();
			} else if (operator.equals(1)) {
				if (nom.length() >= 4) {
					nom = nom + '%';
				}
				urcpmns = CpmnPerso
							.findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsOrAnneeUnivEqualsAndNomCarteLike(
									anneeUniv, noIndividu, nom).getResultList();
			}
		}

		long endTime = System.currentTimeMillis();	
		double duration = (endTime - startTime)/1000.0;
		
		log.info("return " + urcpmns.size() + " in " + duration + " seconds.");
		
		return urcpmns;
	}

}
