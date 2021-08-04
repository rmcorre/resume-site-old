package org.academiadecodigo.codezillas.persistence.model.employer;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;

import javax.persistence.*;

@Entity
@Table(name = "employer_address")
public class EmployerAddress extends AbstractModel {

    @Column(name = "current")
    private Boolean current;

    @Column(name = "building_number")
    private String buildingNumber;

    @Column(name = "street")
    private String street;

    @Column(name = "parish_town_city")
    private String parishTownCity;

    @Column(name = "state_province")
    private String stateProvince;

    @Column(name = "region")
    private String region;

    @Column(name = "country")
    private String country;

    @Column(name = "postal_code")
    private String postalCode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employer_id")
    private Employer employer;

    public EmployerAddress() {
    }

    public EmployerAddress(Boolean current, String buildingNumber, String street, String parishTownCity, String stateProvince, String region, String country, String postalCode) {
        this.current = current;
        this.buildingNumber = buildingNumber;
        this.street = street;
        this.parishTownCity = parishTownCity;
        this.stateProvince = stateProvince;
        this.region = region;
        this.country = country;
        this.postalCode = postalCode;
    }

    public Boolean getCurrent() {
        return current;
    }

    public void setCurrent(Boolean current) {
        this.current = current;
    }

    public String getBuildingNumber() {
        return buildingNumber;
    }

    public void setBuildingNumber(String buildingNumber) {
        this.buildingNumber = buildingNumber;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getParishTownCity() {
        return parishTownCity;
    }

    public void setParishTownCity(String parishTownCity) {
        this.parishTownCity = parishTownCity;
    }

    public String getStateProvince() {
        return stateProvince;
    }

    public void setStateProvince(String stateProvince) {
        this.stateProvince = stateProvince;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public Employer getEmployer() {
        return employer;
    }

    public void setEmployer(Employer employer) {
        this.employer = employer;
    }

    @Override
    public String toString() {
        return "EmployerAddress{" +
                "current=" + current +
                ", buildingNumber='" + buildingNumber + '\'' +
                ", street='" + street + '\'' +
                ", parishTownCity='" + parishTownCity + '\'' +
                ", stateProvince='" + stateProvince + '\'' +
                ", region='" + region + '\'' +
                ", country='" + country + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", employer=" + employer +
                "} " + super.toString();
    }
}
