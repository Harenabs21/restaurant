package hei.school.restaurant.models;

import hei.school.restaurant.models.ingredient.Ingredient;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.Instant;
import java.util.Set;

@AllArgsConstructor
@Data
public class Menu {
    private int id;
    private String name;
    private double sellingPrice;
    private Set<Ingredient> ingredients;
    private Instant instant;
}
