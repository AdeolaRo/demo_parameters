package org.example.demo_parameters.model;

import java.time.LocalDate;
import java.util.Date;

public class Cat {
    private String name;
    private String race;
    private String favFood;
    private LocalDate birthDate;


    public Cat(String name, String race, String favFood, LocalDate birthDate) {
        this.name = name;
        this.race = race;
        this.favFood = favFood;
        this.birthDate = birthDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getFavFood() {
        return favFood;
    }

    public void setFavFood(String favFood) {
        this.favFood = favFood;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }
}
