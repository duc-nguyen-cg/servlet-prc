package com.codegym.service;

import com.codegym.model.Product;

import java.util.*;

public class ProductService implements IProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "IPhone X", 299.1, "Exclusive", "Apple"));
        products.put(2, new Product(2, "Space Brothers", 26.5, "Manga", "JAXA"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void add(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.replace(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
