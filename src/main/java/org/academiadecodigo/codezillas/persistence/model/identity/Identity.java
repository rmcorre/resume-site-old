package org.academiadecodigo.codezillas.persistence.model.identity;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;
import org.academiadecodigo.codezillas.persistence.model.Portfolio;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "identity")
public class Identity extends AbstractModel {

//    @NotNull(message="required field")
//    @Size(min=2, message="required field")
    @Column(name = "first_name")
    private String firstName;

//    @NotNull(message="required field")
//    @Size(min=2, message="required field")
    @Column(name = "last_name")
    private String lastName;

    // need validation for email
//    @NotNull(message="required field")
//    @Email(message = "must be a well-formed email")
    @Column(name = "email")
    private String email;

    // need validation for phone number
//    @NotNull(message="required field")
//    @Pattern(regexp="", message="")
    @Column(name = "phone")
    private String phone;

    @Column(name = "active")
    private Boolean active;

    @OneToMany(
            mappedBy = "identity",
            cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.REMOVE},
            orphanRemoval = true,
            fetch = FetchType.EAGER)
    Set<IdentityAddress> identityAddresses = new HashSet<>();

    @ManyToMany(mappedBy = "identities", fetch = FetchType.EAGER)
    private Set<Portfolio> portfolios = new HashSet<>();

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Boolean getActive() {
        return this.active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public Boolean isActive() {
        return this.active;
    }

    public Set<Portfolio> getPortfolios() {
        return portfolios;
    }

    public void setPortfolios(Set<Portfolio> portfolios) {
        this.portfolios = portfolios;
    }

    public Set<IdentityAddress> getAddresses() {
        return identityAddresses;
    }

    public void setAddresses(Set<IdentityAddress> profileAddresses) {
        this.identityAddresses = profileAddresses;
    }

    public Identity add(IdentityAddress profileAddress) {
        this.identityAddresses.add(profileAddress);
        profileAddress.setProfile(this);
        return this;
    }

    public void remove(IdentityAddress identityAddress) {
        this.identityAddresses.remove(identityAddress);
        identityAddress.setProfile(null);
    }

    public IdentityAddress getCurrentAddress() {
        IdentityAddress active = null;
        for (IdentityAddress a : getAddresses()) {
            if (a.isCurrent()) {
                active = a;
            }
        }
        return active;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Identity identity = (Identity) o;
        return getFirstName().equals(identity.getFirstName()) &&
                getLastName().equals(identity.getLastName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getFirstName(), getLastName());
    }

//    @Override
//    public String toString() {
//        return "Identity{" +
//                "firstName='" + firstName + '\'' +
//                ", lastName='" + lastName + '\'' +
//                ", email='" + email + '\'' +
//                ", phone='" + phone + '\'' +
//                ", active=" + active +
//                "}";
//    }
}
