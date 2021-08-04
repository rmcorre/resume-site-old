package org.academiadecodigo.codezillas.persistence.dao.toolsAndTech;

import org.academiadecodigo.codezillas.persistence.dao.DAO;
import org.academiadecodigo.codezillas.persistence.model.ToolsAndTechnology;

import java.util.List;

public interface ToolsAndTechDAO extends DAO<ToolsAndTechnology> {

    List<String> readBySkillCategory(String skillCategory);
}
