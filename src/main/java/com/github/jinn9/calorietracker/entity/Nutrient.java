package com.github.jinn9.calorietracker.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Getter
public class Nutrient {
    @Id
    @GeneratedValue
    @Column(name = "nutrient_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id")
    @JsonIgnore // todo: remove when handlers in NutrientController return a dto
    private Product product;

    private double protein;
    private double carbohydrates;
    private double fat;
    private double servingSize;
    private String servingUnit;
    private double calories;
}
