package org.academiadecodigo.codezillas.persistence.model.industry;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "branch")
public class Branch extends AbstractModel {

    @Column(name = "name")
    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "industry")
    private Industry industry;

    public Branch() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Industry getIndustry() {
        return industry;
    }

    public void setIndustry(Industry industry) {
        this.industry = industry;
    }

    @Override
    public String toString() {
        return "Branch{" +
                "name='" + name + '\'' +
                "} " + super.toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Branch)) return false;
        Branch branch = (Branch) o;
        return Objects.equals(getName(), branch.getName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getName());
    }
}
