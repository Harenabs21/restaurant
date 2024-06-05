package hei.school.restaurant.models;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Set;

@Getter
@AllArgsConstructor
public class Restaurant {
    private int id;
    private String location;
    private Set<Menu> menus;
}
