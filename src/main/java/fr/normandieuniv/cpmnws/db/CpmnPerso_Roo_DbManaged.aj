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
    
    @Column(name = "REFERENCE", length = 100)
    private String CpmnPerso.reference;
    
    @Column(name = "D_NAISSANCE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar CpmnPerso.dNaissance;
    
    @Column(name = "LIBELLE_CARTE", length = 100)
    private String CpmnPerso.libelleCarte;
    
    @Column(name = "D_FIN_VAL")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar CpmnPerso.dFinVal;
    
    @Column(name = "TYPE_POPULATION_LIBELLE", length = 40)
    private String CpmnPerso.typePopulationLibelle;
    
    @Column(name = "TYPE_POPULATION_CODE", length = 40)
    private String CpmnPerso.typePopulationCode;
    
    @Column(name = "ADRESSE_ETABLISSEMENT", length = 100)
    private String CpmnPerso.adresseEtablissement;
    
    @Column(name = "STRUCTURE_AFF_LIBELLE", length = 20)
    private String CpmnPerso.structureAffLibelle;
    
    @Column(name = "STRUCTURE_AFF_CODE", length = 5)
    private String CpmnPerso.structureAffCode;
    
    @Column(name = "STRUCTURE_AFF_RNE", length = 8)
    private String CpmnPerso.structureAffRne;
    
    @Column(name = "CORPS", length = 40)
    private String CpmnPerso.corps;
    
    @Column(name = "LOGIN", length = 100)
    private String CpmnPerso.login;
    
    @Column(name = "RESPONSABILITE_STRUC", length = 100)
    private String CpmnPerso.responsabiliteStruc;
    
    @Column(name = "COTISATION_PARTICULIERE", length = 100)
    private String CpmnPerso.cotisationParticuliere;
    
    @Column(name = "TRANSMISSION_DONNEES_CROUS")
    private BigDecimal CpmnPerso.transmissionDonneesCrous;
    
    @Column(name = "NUM_BU")
    private BigDecimal CpmnPerso.numBu;
    
    @Column(name = "LEOCODE", length = 108)
    private String CpmnPerso.leocode;
    
    @Column(name = "LOGO_ETABLISSEMENT", length = 0)
    private String CpmnPerso.logoEtablissement;
    
    @Column(name = "PHOTO", length = 0)
    private String CpmnPerso.photo;
    
    @Column(name = "DROIT_PHOTO")
    private BigDecimal CpmnPerso.droitPhoto;
    
    @Column(name = "ANNEE_UNIV")
    private BigDecimal CpmnPerso.anneeUniv;
    
    @Column(name = "SUAPS", length = 100)
    private String CpmnPerso.suaps;
    
    @Column(name = "ETABLISSEMENT", length = 100)
    private String CpmnPerso.etablissement;
    
    @Column(name = "STATUT_CROUS", length = 100)
    private String CpmnPerso.statutCrous;
    
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
    
    @Column(name = "EMAIL", length = 100)
    private String CpmnPerso.email;
    
    @Column(name = "SOCIETE")
    private BigDecimal CpmnPerso.societe;
    
    @Column(name = "EMPLOYEUR", length = 100)
    private String CpmnPerso.employeur;
    
    @Column(name = "TEL_PORT", length = 100)
    private String CpmnPerso.telPort;
    
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
    
    public String CpmnPerso.getLibelleCarte() {
        return libelleCarte;
    }
    
    public void CpmnPerso.setLibelleCarte(String libelleCarte) {
        this.libelleCarte = libelleCarte;
    }
    
    public Calendar CpmnPerso.getDFinVal() {
        return dFinVal;
    }
    
    public void CpmnPerso.setDFinVal(Calendar dFinVal) {
        this.dFinVal = dFinVal;
    }
    
    public String CpmnPerso.getTypePopulationLibelle() {
        return typePopulationLibelle;
    }
    
    public void CpmnPerso.setTypePopulationLibelle(String typePopulationLibelle) {
        this.typePopulationLibelle = typePopulationLibelle;
    }
    
    public String CpmnPerso.getTypePopulationCode() {
        return typePopulationCode;
    }
    
    public void CpmnPerso.setTypePopulationCode(String typePopulationCode) {
        this.typePopulationCode = typePopulationCode;
    }
    
    public String CpmnPerso.getAdresseEtablissement() {
        return adresseEtablissement;
    }
    
    public void CpmnPerso.setAdresseEtablissement(String adresseEtablissement) {
        this.adresseEtablissement = adresseEtablissement;
    }
    
    public String CpmnPerso.getStructureAffLibelle() {
        return structureAffLibelle;
    }
    
    public void CpmnPerso.setStructureAffLibelle(String structureAffLibelle) {
        this.structureAffLibelle = structureAffLibelle;
    }
    
    public String CpmnPerso.getStructureAffCode() {
        return structureAffCode;
    }
    
    public void CpmnPerso.setStructureAffCode(String structureAffCode) {
        this.structureAffCode = structureAffCode;
    }
    
    public String CpmnPerso.getStructureAffRne() {
        return structureAffRne;
    }
    
    public void CpmnPerso.setStructureAffRne(String structureAffRne) {
        this.structureAffRne = structureAffRne;
    }
    
    public String CpmnPerso.getCorps() {
        return corps;
    }
    
    public void CpmnPerso.setCorps(String corps) {
        this.corps = corps;
    }
    
    public String CpmnPerso.getLogin() {
        return login;
    }
    
    public void CpmnPerso.setLogin(String login) {
        this.login = login;
    }
    
    public String CpmnPerso.getResponsabiliteStruc() {
        return responsabiliteStruc;
    }
    
    public void CpmnPerso.setResponsabiliteStruc(String responsabiliteStruc) {
        this.responsabiliteStruc = responsabiliteStruc;
    }
    
    public String CpmnPerso.getCotisationParticuliere() {
        return cotisationParticuliere;
    }
    
    public void CpmnPerso.setCotisationParticuliere(String cotisationParticuliere) {
        this.cotisationParticuliere = cotisationParticuliere;
    }
    
    public BigDecimal CpmnPerso.getTransmissionDonneesCrous() {
        return transmissionDonneesCrous;
    }
    
    public void CpmnPerso.setTransmissionDonneesCrous(BigDecimal transmissionDonneesCrous) {
        this.transmissionDonneesCrous = transmissionDonneesCrous;
    }
    
    public BigDecimal CpmnPerso.getNumBu() {
        return numBu;
    }
    
    public void CpmnPerso.setNumBu(BigDecimal numBu) {
        this.numBu = numBu;
    }
    
    public String CpmnPerso.getLeocode() {
        return leocode;
    }
    
    public void CpmnPerso.setLeocode(String leocode) {
        this.leocode = leocode;
    }
    
    public String CpmnPerso.getLogoEtablissement() {
        return logoEtablissement;
    }
    
    public void CpmnPerso.setLogoEtablissement(String logoEtablissement) {
        this.logoEtablissement = logoEtablissement;
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
    
    public BigDecimal CpmnPerso.getAnneeUniv() {
        return anneeUniv;
    }
    
    public void CpmnPerso.setAnneeUniv(BigDecimal anneeUniv) {
        this.anneeUniv = anneeUniv;
    }
    
    public String CpmnPerso.getSuaps() {
        return suaps;
    }
    
    public void CpmnPerso.setSuaps(String suaps) {
        this.suaps = suaps;
    }
    
    public String CpmnPerso.getEtablissement() {
        return etablissement;
    }
    
    public void CpmnPerso.setEtablissement(String etablissement) {
        this.etablissement = etablissement;
    }
    
    public String CpmnPerso.getStatutCrous() {
        return statutCrous;
    }
    
    public void CpmnPerso.setStatutCrous(String statutCrous) {
        this.statutCrous = statutCrous;
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
    
    public String CpmnPerso.getEmployeur() {
        return employeur;
    }
    
    public void CpmnPerso.setEmployeur(String employeur) {
        this.employeur = employeur;
    }
    
    public String CpmnPerso.getTelPort() {
        return telPort;
    }
    
    public void CpmnPerso.setTelPort(String telPort) {
        this.telPort = telPort;
    }
    
}
