package org.academiadecodigo.codezillas.persistence.model.employer;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;

import javax.persistence.*;

@Entity
@Table(name = "employer_duty")
public class EmployerDuty extends AbstractModel {

    @Column(name = "category")
    private String category;

    @Column(name = "description")
    private String description;

    @ManyToOne(fetch = FetchType.LAZY,
            cascade = {CascadeType.PERSIST, CascadeType.MERGE,
                        CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "employer_id")
    private Employer employer;

    public EmployerDuty() {
    }

    public EmployerDuty(String category, String description) {
        this.category = category;
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Employer getEmployer() {
        return employer;
    }

    public void setEmployer(Employer employer) {
        this.employer = employer;
    }

    @Override
    public String toString() {
        return "Duty{" +
                "category='" + category + '\'' +
                ", description='" + description + '\'' +
                ", employer=" + employer +
                '}';
    }
}
