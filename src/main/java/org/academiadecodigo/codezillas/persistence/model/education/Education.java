package org.academiadecodigo.codezillas.persistence.model.education;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;
import org.academiadecodigo.codezillas.persistence.model.Portfolio;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

import javax.persistence.*;

@Entity
@Table(name = "education")
public class Education extends AbstractModel {

    @Column(name = "institution")
    private String institution;

    @Column(name = "course")
    private String course;

    @Column(name = "start_date")
    private String startDate;

    @Column(name = "end_date")
    private String endDate;

    @Column(name = "address")
    private String address;

    @ManyToOne(fetch = FetchType.EAGER)
    private Portfolio portfolio;

    public Education() {
    }

    public Education(String institution, String course, String startDate, String endDate, String address) {
        this.institution = institution;
        this.course = course;
        this.startDate = startDate;
        this.endDate = endDate;
        this.address = address;
    }

    public String getInstitution() {
        return institution;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Portfolio getPortfolio() {
        return portfolio;
    }

    public void setPortfolio(Portfolio portfolio) {
        this.portfolio = portfolio;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;

        if (o == null || getClass() != o.getClass()) return false;

        Education education = (Education) o;

        return new EqualsBuilder()
                .append(institution, education.institution)
                .append(course, education.course)
                .append(startDate, education.startDate)
                .append(endDate, education.endDate)
                .append(address, education.address)
                .append(portfolio, education.portfolio)
                .isEquals();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17, 37)
                .append(institution)
                .append(course)
                .append(startDate)
                .append(endDate)
                .append(address)
                .append(portfolio)
                .toHashCode();
    }

//    @Override
//    public String toString() {
//        return "Education{" +
//                "institution='" + institution + '\'' +
//                ", course='" + course + '\'' +
//                ", startDate='" + startDate + '\'' +
//                ", endDate='" + endDate + '\'' +
//                ", address='" + address + '\'' +
//                ", portfolio=" + portfolio +
//                '}';
//    }
}


