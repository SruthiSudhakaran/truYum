package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

//Menu Item(Admin) Main class
public class MenuItemDaoCollectionImplTest {
    static MenuItemDaoCollectionImpl menudao = new MenuItemDaoCollectionImpl();

    public static void main(String args[]) {
        testGetMenuItemListAdmin();
        testGetMenuItemListCustomer();
        testModifyMenuItem();
        testGetMenuItemListAdmin();
        testGetMenuItemListCustomer();
        testGetMenuItem();

    }

    public static void testGetMenuItemListAdmin() {
        System.out.println("Admin View");
        List<MenuItem> menu = menudao.getMenuItemListAdmin();
        System.out.printf("%-10s%-20s%-15s%-10s%-17s%-15s%-15s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem : menu) {
            System.out.println(menuItem); // invokes toString();
        }

    }

    public static void testGetMenuItemListCustomer() {
        System.out.println("\nCustomer View");
        List<MenuItem> menuItem = menudao.getMenuItemListCustomer();
        System.out.printf("%-10s%-20s%-15s%-10s%-17s%-15s%-15s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menuItem) {
            System.out.println(menuItem2);
        }

    }

    public static void testModifyMenuItem() {
        System.out.println("\nModify Menu Item");
        MenuItem menuItem = new MenuItem(1, "Eat and Enjoy", 12345.0f, true,
                DateUtil.convertToDate("02/01/2020"), "Main Dish", false);
        menudao.modifyMenuItem(menuItem);

    }

    public static void testGetMenuItem() {
        System.out.println("\nGet Menu Item");
        System.out.printf("%-10s%-20s%-15s%-10s%-17s%-15s%-15s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        MenuItem menuItem = menudao.getMenuItem(3);
        System.out.println(menuItem); // invokes toString();

    }
}
