package org.academiadecodigo.codezillas.persistence.model.industry;

import org.academiadecodigo.codezillas.persistence.model.AbstractModel;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "industry")
public class Industry extends AbstractModel {

    @Column
    private String domain;

    @OneToMany(mappedBy = "industry", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Branch> branches;


    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public List<Branch> getBranches() {
        return branches;
    }

    public void addBranch(Branch branch) {

        if (this.branches == null) {
            this.branches = new ArrayList<>();
        }
        branches.add(branch);
        branch.setIndustry(this);
    }

    public void removeBranch(Branch branch) {

        this.branches.remove(branch);
        branch.setIndustry(null);
    }

    @Override
    public String toString() {
        return "Industry{" +
                "domain='" + domain + '\'' +
                "} " + super.toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Industry)) return false;
        Industry industry = (Industry) o;
        return Objects.equals(getDomain(), industry.getDomain());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getDomain());
    }
}
