// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.normandieuniv.cpmnws.web;

import fr.normandieuniv.cpmnws.db.CpmnPerso;
import fr.normandieuniv.cpmnws.web.ApplicationConversionServiceFactoryBean;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<CpmnPerso, String> ApplicationConversionServiceFactoryBean.getCpmnPersoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.normandieuniv.cpmnws.db.CpmnPerso, java.lang.String>() {
            public String convert(CpmnPerso cpmnPerso) {
                return new StringBuilder().append(cpmnPerso.getNomCarte()).append(' ').append(cpmnPerso.getNomUsuel()).append(' ').append(cpmnPerso.getNomPatronymique()).append(' ').append(cpmnPerso.getPrenom()).toString();
            }
        };
    }
    
    public Converter<BigDecimal, CpmnPerso> ApplicationConversionServiceFactoryBean.getIdToCpmnPersoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigDecimal, fr.normandieuniv.cpmnws.db.CpmnPerso>() {
            public fr.normandieuniv.cpmnws.db.CpmnPerso convert(java.math.BigDecimal id) {
                return CpmnPerso.findCpmnPerso(id);
            }
        };
    }
    
    public Converter<String, CpmnPerso> ApplicationConversionServiceFactoryBean.getStringToCpmnPersoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.normandieuniv.cpmnws.db.CpmnPerso>() {
            public fr.normandieuniv.cpmnws.db.CpmnPerso convert(String id) {
                return getObject().convert(getObject().convert(id, BigDecimal.class), CpmnPerso.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCpmnPersoToStringConverter());
        registry.addConverter(getIdToCpmnPersoConverter());
        registry.addConverter(getStringToCpmnPersoConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}