package org.academiadecodigo.codezillas.service.toolsAndTech;

import org.academiadecodigo.codezillas.persistence.model.ToolsAndTechnology;

import java.util.List;

public interface ToolsAndTechSvc {

    List<ToolsAndTechnology> findAll();

    List<String> findBySkillCategory(String skillCategory);

    void saveOrUpdate(ToolsAndTechnology toolsAndTechnology);
}
