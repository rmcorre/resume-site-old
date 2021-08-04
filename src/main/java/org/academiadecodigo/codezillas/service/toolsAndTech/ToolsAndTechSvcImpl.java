package org.academiadecodigo.codezillas.service.toolsAndTech;

import org.academiadecodigo.codezillas.persistence.dao.toolsAndTech.ToolsAndTechDAO;
import org.academiadecodigo.codezillas.persistence.model.ToolsAndTechnology;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ToolsAndTechSvcImpl implements ToolsAndTechSvc {

    private final ToolsAndTechDAO toolsAndTechDAO;

    @Autowired
    public ToolsAndTechSvcImpl(ToolsAndTechDAO toolsAndTechDAO) {
        this.toolsAndTechDAO = toolsAndTechDAO;
    }

    @Override
    @Transactional
    public List<ToolsAndTechnology> findAll() {
        return toolsAndTechDAO.findAll();
    }

    @Override
    @Transactional
    public List<String> findBySkillCategory(String skillCategory) {
        return toolsAndTechDAO.readBySkillCategory(skillCategory);
    }

    @Override
    @Transactional
    public void saveOrUpdate(ToolsAndTechnology toolsAndTechnology) {
        toolsAndTechDAO.saveOrUpdate(toolsAndTechnology);
    }
}
