// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.normandieuniv.cpmnws.db;

import fr.normandieuniv.cpmnws.db.CpmnPerso;
import java.math.BigDecimal;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect CpmnPerso_Roo_DbManaged {
    
    @Column(name = "NOM_CARTE", length = 40)
    private String CpmnPerso.nomCarte;
    
    @Column(name = "NOM_USUEL", length = 40)
    private String CpmnPerso.nomUsuel;
    
    @Column(name = "NOM_PATRONYMIQUE", length = 40)
    private String CpmnPerso.nomPatronymique;
    
    @Column(name = "PRENOM", length = 20)
    private String CpmnPerso.prenom;
    
    @Column(name = "REFERENCE", length = 13)
    private String CpmnPerso.reference;
    
    @Column(name = "D_NAISSANCE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar CpmnPerso.dNaissance;
    
    @Column(name = "D_DEB_VAL")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar CpmnPerso.dDebVal;
    
    @Column(name = "D_FIN_VAL", length = 0)
    private String CpmnPerso.dFinVal;
    
    @Column(name = "NUM_BU")
    private BigDecimal CpmnPerso.numBu;
    
    @Column(name = "ID_PRES_UN", length = 0)
    private String CpmnPerso.idPresUn;
    
    @Column(name = "PHOTO", length = 0)
    private String CpmnPerso.photo;
    
    @Column(name = "DROIT_PHOTO")
    private BigDecimal CpmnPerso.droitPhoto;
    
    @Column(name = "INDICE")
    private String CpmnPerso.indice;
    
    @Column(name = "TARIF")
    private BigDecimal CpmnPerso.tarif;
    
    @Column(name = "NOM_CROUS", length = 40)
    private String CpmnPerso.nomCrous;
    
    @Column(name = "PRENOM_CROUS", length = 20)
    private String CpmnPerso.prenomCrous;
    
    @Column(name = "ETAB_RNE", length = 8)
    private String CpmnPerso.etabRne;
    
    @Column(name = "COMP_RNE", length = 8)
    private String CpmnPerso.compRne;
    
    @Column(name = "EMAIL", length = 0)
    private String CpmnPerso.email;
    
    @Column(name = "SOCIETE")
    private BigDecimal CpmnPerso.societe;
    
    @Column(name = "TEL_PORT", length = 11)
    private String CpmnPerso.telPort;
    
    @Column(name = "ANNEE_UNIV")
    private BigDecimal CpmnPerso.anneeUniv;
    
    @Column(name = "CORPS", length = 40)
    private String CpmnPerso.corps;
    
    @Column(name = "POPULATION", length = 40)
    private String CpmnPerso.population;
    
    @Column(name = "TYPE_POPULATION", length = 4)
    private String CpmnPerso.typePopulation;
    
    @Column(name = "CODE_BARRE")
    private BigDecimal CpmnPerso.codeBarre;
    
    public String CpmnPerso.getNomCarte() {
        return nomCarte;
    }
    
    public void CpmnPerso.setNomCarte(String nomCarte) {
        this.nomCarte = nomCarte;
    }
    
    public String CpmnPerso.getNomUsuel() {
        return nomUsuel;
    }
    
    public void CpmnPerso.setNomUsuel(String nomUsuel) {
        this.nomUsuel = nomUsuel;
    }
    
    public String CpmnPerso.getNomPatronymique() {
        return nomPatronymique;
    }
    
    public void CpmnPerso.setNomPatronymique(String nomPatronymique) {
        this.nomPatronymique = nomPatronymique;
    }
    
    public String CpmnPerso.getPrenom() {
        return prenom;
    }
    
    public void CpmnPerso.setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
    public String CpmnPerso.getReference() {
        return reference;
    }
    
    public void CpmnPerso.setReference(String reference) {
        this.reference = reference;
    }
    
    public Calendar CpmnPerso.getDNaissance() {
        return dNaissance;
    }
    
    public void CpmnPerso.setDNaissance(Calendar dNaissance) {
        this.dNaissance = dNaissance;
    }
    
    public Calendar CpmnPerso.getDDebVal() {
        return dDebVal;
    }
    
    public void CpmnPerso.setDDebVal(Calendar dDebVal) {
        this.dDebVal = dDebVal;
    }
    
    public String CpmnPerso.getDFinVal() {
        return dFinVal;
    }
    
    public void CpmnPerso.setDFinVal(String dFinVal) {
        this.dFinVal = dFinVal;
    }
    
    public BigDecimal CpmnPerso.getNumBu() {
        return numBu;
    }
    
    public void CpmnPerso.setNumBu(BigDecimal numBu) {
        this.numBu = numBu;
    }
    
    public String CpmnPerso.getIdPresUn() {
        return idPresUn;
    }
    
    public void CpmnPerso.setIdPresUn(String idPresUn) {
        this.idPresUn = idPresUn;
    }
    
    public String CpmnPerso.getPhoto() {
        return photo;
    }
    
    public void CpmnPerso.setPhoto(String photo) {
        this.photo = photo;
    }
    
    public BigDecimal CpmnPerso.getDroitPhoto() {
        return droitPhoto;
    }
    
    public void CpmnPerso.setDroitPhoto(BigDecimal droitPhoto) {
        this.droitPhoto = droitPhoto;
    }
    
    public String CpmnPerso.getIndice() {
        return indice;
    }
    
    public void CpmnPerso.setIndice(String indice) {
        this.indice = indice;
    }
    
    public BigDecimal CpmnPerso.getTarif() {
        return tarif;
    }
    
    public void CpmnPerso.setTarif(BigDecimal tarif) {
        this.tarif = tarif;
    }
    
    public String CpmnPerso.getNomCrous() {
        return nomCrous;
    }
    
    public void CpmnPerso.setNomCrous(String nomCrous) {
        this.nomCrous = nomCrous;
    }
    
    public String CpmnPerso.getPrenomCrous() {
        return prenomCrous;
    }
    
    public void CpmnPerso.setPrenomCrous(String prenomCrous) {
        this.prenomCrous = prenomCrous;
    }
    
    public String CpmnPerso.getEtabRne() {
        return etabRne;
    }
    
    public void CpmnPerso.setEtabRne(String etabRne) {
        this.etabRne = etabRne;
    }
    
    public String CpmnPerso.getCompRne() {
        return compRne;
    }
    
    public void CpmnPerso.setCompRne(String compRne) {
        this.compRne = compRne;
    }
    
    public String CpmnPerso.getEmail() {
        return email;
    }
    
    public void CpmnPerso.setEmail(String email) {
        this.email = email;
    }
    
    public BigDecimal CpmnPerso.getSociete() {
        return societe;
    }
    
    public void CpmnPerso.setSociete(BigDecimal societe) {
        this.societe = societe;
    }
    
    public String CpmnPerso.getTelPort() {
        return telPort;
    }
    
    public void CpmnPerso.setTelPort(String telPort) {
        this.telPort = telPort;
    }
    
    public BigDecimal CpmnPerso.getAnneeUniv() {
        return anneeUniv;
    }
    
    public void CpmnPerso.setAnneeUniv(BigDecimal anneeUniv) {
        this.anneeUniv = anneeUniv;
    }
    
    public String CpmnPerso.getCorps() {
        return corps;
    }
    
    public void CpmnPerso.setCorps(String corps) {
        this.corps = corps;
    }
    
    public String CpmnPerso.getPopulation() {
        return population;
    }
    
    public void CpmnPerso.setPopulation(String population) {
        this.population = population;
    }
    
    public String CpmnPerso.getTypePopulation() {
        return typePopulation;
    }
    
    public void CpmnPerso.setTypePopulation(String typePopulation) {
        this.typePopulation = typePopulation;
    }
    
    public BigDecimal CpmnPerso.getCodeBarre() {
        return codeBarre;
    }
    
    public void CpmnPerso.setCodeBarre(BigDecimal codeBarre) {
        this.codeBarre = codeBarre;
    }
    
}