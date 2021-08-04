package org.academiadecodigo.codezillas.persistence.model;

import org.academiadecodigo.codezillas.persistence.model.education.Education;
import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="portfolio")
public class Portfolio extends AbstractModel{

    @Column(name = "category")
    private String category;

    @Column(name = "portfolio_name")
    private String portfolioName;

    @Column(name = "summary", length = 1024)
    private String summary;

    // Initializing collections in constructors
    // or setter methods is not recommended.
    @ManyToMany(
            cascade = {CascadeType.PERSIST, CascadeType.MERGE},
            fetch = FetchType.EAGER
    )
    @JoinTable(
            name = "portfolio_identities",
            joinColumns = @JoinColumn(name = "portfolio_id"),
            inverseJoinColumns = @JoinColumn(name = "identity_id")
    )
    private Set<Identity> identities = new HashSet<>();

    @OneToMany(
            mappedBy = "portfolio",
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            fetch = FetchType.EAGER
    )
    private Set<Education> education = new HashSet<>();

    @Column(name = "employer")
    private Integer employer;

    @Column(name = "industry_knowledge")
    private Integer industryKnowledge;

    @Column(name = "tools_and_technology")
    private Integer toolsAndTechnology;

    @Column(name = "active")
    private Boolean active;

    @Column(name = "activeIdentity")
    private Boolean activeIdentity;

    public Portfolio() {
    }

    public void addIdentity(Identity identity) {
        this.identities.add(identity);
        identity.getPortfolios().add(this);
    }

    public void removeIdentity(Identity identity) {
        this.identities.remove(identity);
        identity.getPortfolios().remove(this);
    }

    public Identity getActiveIdentity() {

        Identity activeIdentity = null;
        Set<Identity> identityList = getIdentities();

        for (Identity identity : identityList) {
            if (identity.isActive()) {
                activeIdentity = identity;
            }
        }

        return activeIdentity;
    }

    public void addEducation(Education education) {
        this.education.add(education);
        education.setPortfolio(this);
    }

    public void removeEducation(Education education) {
        this.education.remove(education);
        education.setPortfolio(null);
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPortfolioName() {
        return portfolioName;
    }

    public void setPortfolioName(String portfolioName) {
        this.portfolioName = portfolioName;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Set<Identity> getIdentities() {
        return identities;
    }

    public void setIdentities(Set<Identity> identities) {
        this.identities = identities;
    }

    public Set<Education> getEducation() {
        return education;
    }

    public void setEducation(Set<Education> education) {
        this.education = education;
    }

    public Integer getEmployer() {
        return employer;
    }

    public void setEmployer(Integer employer) {
        this.employer = employer;
    }

    public Integer getIndustryKnowledge() {
        return industryKnowledge;
    }

    public void setIndustryKnowledge(Integer industryKnowledge) {
        this.industryKnowledge = industryKnowledge;
    }

    public Integer getToolsAndTechnology() {
        return toolsAndTechnology;
    }

    public void setToolsAndTechnology(Integer toolsAndTechnology) {
        this.toolsAndTechnology = toolsAndTechnology;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

//    public Boolean getActiveIdentity() {
//        return activeIdentity;
//    }

    public void setActiveIdentity(Boolean activeIdentity) {
        this.activeIdentity = activeIdentity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;

        if (o == null || getClass() != o.getClass()) return false;

        Portfolio portfolio = (Portfolio) o;

        return new EqualsBuilder()
                .append(category, portfolio.category)
                .append(portfolioName, portfolio.portfolioName)
                .append(summary, portfolio.summary)
                .append(active, portfolio.active)
                .isEquals();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17, 37)
                .append(category)
                .append(portfolioName)
                .append(summary)
                .append(active)
                .toHashCode();
    }

    @Override
    public String toString() {
        return "Portfolio{" +
                "category='" + category + '\'' +
                ", portfolioName='" + portfolioName + '\'' +
                ", summary='" + summary + '\'' +
                ", identities=" + identities +
                ", education=" + education +
                ", employer=" + employer +
                ", industryKnowledge=" + industryKnowledge +
                ", toolsAndTechnology=" + toolsAndTechnology +
                ", active=" + active +
                '}';
    }
}
