package org.academiadecodigo.codezillas.controller;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.util.Map;

public class ControllerUtils {

    // helper method to log model attributes
    public static void logModelAttributes(String insideOfMethod, Model model) {

        System.out.println(insideOfMethod);

        Map<String, Object> attributes = model.asMap();
        for (Map.Entry<String, Object> entry : attributes.entrySet()) {
            System.out.println(
                    "Key: " + entry.getKey() +
                    ", Value: " + entry.getValue() +
                    ", Hashcode: " + entry.getValue().hashCode() + "\n");
        }
    }

    // add an InitBinder... to trim leading and trailing whitespace from input strings
    // this method will be called for every web request coming into this controller
    public static void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }
}
