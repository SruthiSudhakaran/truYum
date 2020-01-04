package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {
    static CartDao cartDao=new CartDaoCollectionImpl();

    public static void main(String[] args) {
        testAddCartItem();
        testGetAllCartItems();
        testRemoveCartItem();
        testGetAllCartItems();

    }
    public static void testAddCartItem() {
        System.out.println("Product added into cart");
        cartDao.addCartItem(1, 2);//1 is the userid 2 is menuitemid
        cartDao.addCartItem(1, 3);// 1 is userid and 3 is menuitemid
    }
    public static void testGetAllCartItems() {
        try {
            System.out.println("Retrieving all the items from cart");
            List<MenuItem> list=cartDao.getAllCartItems(1).getMenuItemList(); //getting the menuitem with userid 1 and storing it in the list
            for (MenuItem menuItem : list) {
                System.out.println(menuItem);
            }
            System.out.println("Total Price: "+cartDao.getAllCartItems(1).getTotal());
        } catch (CartEmptyException e) {
           System.out.println(e);  // executes if there is no item in the cart
        }
    }
    public static void testRemoveCartItem() {
        System.out.println("Remove cart");
        cartDao.removeCartIem(1, 3);
    }

}
