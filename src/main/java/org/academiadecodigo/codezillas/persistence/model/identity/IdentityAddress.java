package org.academiadecodigo.codezillas.persistence.model.identity;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "identity_address")
public class IdentityAddress extends AbstractModel {

    @Column(name = "house_apt_suite")
    private String houseAptSuite;

    @Column(name = "street")
    private String address;

    @Column(name = "parish_town_city")
    private String parishTownCity;

    @Column(name = "county_state_prov")
    private String countyStateProvince;

    @Column(name = "country_region")
    private String countryRegion;

    @Column(name = "postal_code")
    private String postalCode;

    @Column(name = "current")
    private Boolean current;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "profile_id")
    private Identity identity;

    public String getHouseAptSuite() {
        return houseAptSuite;
    }

    public void setHouseAptSuite(String buildingNumber) {
        this.houseAptSuite = buildingNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String street) {
        this.address = street;
    }

    public String getParishTownCity() {
        return parishTownCity;
    }

    public void setParishTownCity(String parishTownCity) {
        this.parishTownCity = parishTownCity;
    }

    public String getCountyStateProvince() {
        return countyStateProvince;
    }

    public void setCountyStateProvince(String stateProvince) {
        this.countyStateProvince = stateProvince;
    }

    public String getCountryRegion() {
        return countryRegion;
    }

    public void setCountryRegion(String countryRegion) {
        this.countryRegion = countryRegion;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public Boolean getCurrent() {
        return current;
    }

    public void setCurrent(Boolean current) {
        this.current = current;
    }

    public Boolean isCurrent() {
        return current;
    }

    public Identity getProfile() {
        return identity;
    }

    public void setProfile(Identity identity) {
        this.identity = identity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IdentityAddress that = (IdentityAddress) o;

        if (houseAptSuite != null ? !houseAptSuite.equals(that.houseAptSuite) : that.houseAptSuite != null)
            return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (parishTownCity != null ? !parishTownCity.equals(that.parishTownCity) : that.parishTownCity != null)
            return false;
        if (countyStateProvince != null ? !countyStateProvince.equals(that.countyStateProvince) : that.countyStateProvince != null)
            return false;
        if (countryRegion != null ? !countryRegion.equals(that.countryRegion) : that.countryRegion != null)
            return false;
        if (postalCode != null ? !postalCode.equals(that.postalCode) : that.postalCode != null) return false;
        if (current != null ? !current.equals(that.current) : that.current != null) return false;
        return identity != null ? identity.equals(that.identity) : that.identity == null;
    }

    @Override
    public int hashCode() {
        int result = houseAptSuite != null ? houseAptSuite.hashCode() : 0;
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (parishTownCity != null ? parishTownCity.hashCode() : 0);
        result = 31 * result + (countyStateProvince != null ? countyStateProvince.hashCode() : 0);
        result = 31 * result + (countryRegion != null ? countryRegion.hashCode() : 0);
        result = 31 * result + (postalCode != null ? postalCode.hashCode() : 0);
        result = 31 * result + (current != null ? current.hashCode() : 0);
        result = 31 * result + (identity != null ? identity.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "IdentityAddress{" +
                "houseAptSuite='" + houseAptSuite + '\'' +
                ", address='" + address + '\'' +
                ", parishTownCity='" + parishTownCity + '\'' +
                ", countyStateProvince='" + countyStateProvince + '\'' +
                ", countryRegion='" + countryRegion + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", current=" + current +
                ", identity=" + identity +
                '}';
    }
}
