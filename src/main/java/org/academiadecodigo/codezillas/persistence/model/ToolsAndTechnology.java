package org.academiadecodigo.codezillas.persistence.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tools_and_technology")
public class ToolsAndTechnology extends AbstractModel {

    @Column(name = "domain")
    private String domain;

    @Column(name = "skill")
    private String skill;

    @Column(name = "skill_category")
    private String skillCategory;

    @Column(name = "tool")
    private Boolean tool;

    @Column(name = "technology")
    private Boolean technology;

    @Column(name = "active")
    private Boolean active;


    public ToolsAndTechnology() {

    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getSkillCategory() {
        return skillCategory;
    }

    public void setSkillCategory(String skillCategory) {
        this.skillCategory = skillCategory;
    }

    public Boolean getTool() {
        return tool;
    }

    public void setTool(Boolean tool) {
        this.tool = tool;
    }

    public Boolean getTechnology() {
        return technology;
    }

    public void setTechnology(Boolean technology) {
        this.technology = technology;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }
}
