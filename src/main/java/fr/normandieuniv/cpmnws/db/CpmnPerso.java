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
package fr.normandieuniv.cpmnws.db;

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.Id;
import javax.persistence.TypedQuery;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooDbManaged(automaticallyDelete = true)
@RooJpaActiveRecord(versionField = "", table = "V_NORMANDIE_LEOCARTE_PERSO", finders = { "findCpmnPersoesByAnneeUnivEquals", "findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEquals", "findCpmnPersoesByAnneeUnivEqualsAndNomCarteLike", "findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsAndNomCarteLike", "findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsOrAnneeUnivEqualsAndNomCarteLike" })
public class CpmnPerso {

    @Id
    @Column(name = "NO_INDIVIDU")
    private BigDecimal noIndividu;

    @Column(name = "LIBELLE", columnDefinition = "char")
    private String libelle;
    
    @Column(name = "STATUT", columnDefinition = "char")
    private String statut;

    @Column(name = "EMPLOYEUR", columnDefinition = "char")
    private String employeur;

    
    public static TypedQuery<fr.normandieuniv.cpmnws.db.CpmnPerso> findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsAndNomCarteLike(BigDecimal anneeUniv, BigDecimal noIndividu, String nomCarte) {
        if (anneeUniv == null) throw new IllegalArgumentException("The anneeUniv argument is required");
        if (noIndividu == null) throw new IllegalArgumentException("The noIndividu argument is required");
        if (nomCarte == null || nomCarte.length() == 0) throw new IllegalArgumentException("The nomCarte argument is required");
        nomCarte = nomCarte.replace('*', '%');
        EntityManager em = entityManager();
        TypedQuery<CpmnPerso> q = em.createQuery("SELECT o FROM CpmnPerso AS o WHERE o.anneeUniv = :anneeUniv  AND o.noIndividu = :noIndividu  AND LOWER(o.nomCarte) LIKE LOWER(:nomCarte)", CpmnPerso.class);
        q.setParameter("anneeUniv", anneeUniv);
        q.setParameter("noIndividu", noIndividu);
        q.setParameter("nomCarte", nomCarte);
        return q;
    }

    public static TypedQuery<fr.normandieuniv.cpmnws.db.CpmnPerso> findCpmnPersoesByAnneeUnivEqualsAndNomCarteLike(BigDecimal anneeUniv, String nomCarte) {
        if (anneeUniv == null) throw new IllegalArgumentException("The anneeUniv argument is required");
        if (nomCarte == null || nomCarte.length() == 0) throw new IllegalArgumentException("The nomCarte argument is required");
        nomCarte = nomCarte.replace('*', '%');
        EntityManager em = entityManager();
        TypedQuery<CpmnPerso> q = em.createQuery("SELECT o FROM CpmnPerso AS o WHERE o.anneeUniv = :anneeUniv  AND LOWER(o.nomCarte) LIKE LOWER(:nomCarte)", CpmnPerso.class);
        q.setParameter("anneeUniv", anneeUniv);
        q.setParameter("nomCarte", nomCarte);
        return q;
    }

    public static TypedQuery<fr.normandieuniv.cpmnws.db.CpmnPerso> findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsOrAnneeUnivEqualsAndNomCarteLike(BigDecimal anneeUniv, BigDecimal noIndividu, String nomCarte) {
        if (anneeUniv == null) throw new IllegalArgumentException("The anneeUniv argument is required");
        if (noIndividu == null) throw new IllegalArgumentException("The noIndividu argument is required");
        if (anneeUniv == null) throw new IllegalArgumentException("The anneeUniv argument is required");
        if (nomCarte == null || nomCarte.length() == 0) throw new IllegalArgumentException("The nomCarte argument is required");
        nomCarte = nomCarte.replace('*', '%');
        EntityManager em = entityManager();
        TypedQuery<CpmnPerso> q = em.createQuery("SELECT o FROM CpmnPerso AS o WHERE o.anneeUniv = :anneeUniv  AND o.noIndividu = :noIndividu  OR o.anneeUniv = :anneeUniv  AND LOWER(o.nomCarte) LIKE LOWER(:nomCarte)", CpmnPerso.class);
        q.setParameter("anneeUniv", anneeUniv);
        q.setParameter("noIndividu", noIndividu);
        q.setParameter("anneeUniv", anneeUniv);
        q.setParameter("nomCarte", nomCarte);
        return q;
    }

    public static TypedQuery<fr.normandieuniv.cpmnws.db.CpmnPerso> findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsOrAnneeUnivEqualsAndNomCarteLike(BigDecimal anneeUniv, BigDecimal noIndividu, BigDecimal bidon, String nomCarte) {
        return findCpmnPersoesByAnneeUnivEqualsAndNoIndividuEqualsOrAnneeUnivEqualsAndNomCarteLike(anneeUniv, noIndividu, nomCarte);
    }
}
