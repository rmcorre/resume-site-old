package org.academiadecodigo.codezillas.persistence.model.employer;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "employer")
public class Employer extends AbstractModel {

    @Column(name = "employer_name")
    private String employerName;

    @Column(name = "position")
    private String position;

    @Column(name = "start_date")
    private String startDate;

    @Column(name = "end_date")
    private String endDate;

    @Column(name = "summary")
    private String summary;

    @OneToMany(
            mappedBy = "employer",
            cascade = CascadeType.ALL,
            orphanRemoval = true)
    private Set<EmployerAddress> employerAddresses = new HashSet<>();

    public Employer() {
    }

    public Employer(String employerName, String position, String startDate, String endDate, String summary) {
        this.employerName = employerName;
        this.position = position;
        this.startDate = startDate;
        this.endDate = endDate;
        this.summary = summary;
    }

    public String getEmployerName() {
        return employerName;
    }

    public void setEmployerName(String employer) {
        this.employerName = employer;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Set<EmployerAddress> getEmployerAddresses() {
        return employerAddresses;
    }

    public void setEmployerAddresses(Set<EmployerAddress> employerAddresses) {
        this.employerAddresses = employerAddresses;
    }

    public void add(EmployerAddress employerAddress) {

        this.employerAddresses.add(employerAddress);
        employerAddress.setEmployer(this);

    }

    public void remove(EmployerAddress employerAddress) {
        this.employerAddresses.remove(employerAddress);
        employerAddress.setEmployer(null);
    }

    @Override
    public String toString() {
        return "Employer{" +
                "employerName='" + employerName + '\'' +
                ", position='" + position + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", summary='" + summary + '\'' +
                ", employerAddresses=" + employerAddresses +
                "} " + super.toString();
    }
}
