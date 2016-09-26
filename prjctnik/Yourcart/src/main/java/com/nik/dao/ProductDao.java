package com.nik.dao;

import java.util.List;

import com.nik.model.Product;

public interface ProductDao {
void addproduct(Product product);
List<Product> viewProducts();
void deleteProductById(int id);
Product getProductByID(int id);
}
