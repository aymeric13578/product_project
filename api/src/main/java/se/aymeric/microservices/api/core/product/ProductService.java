package se.aymeric.microservices.api.core.product;

import org.springframework.web.bind.annotation.*;

import  se.aymeric.api.core.product.Product;
public interface ProductService {

    /**
     * Sample usage: "curl $HOST:$PORT/product/1".
     *
     * @param productId Id of the product
     * @return the product, if found, else null
     */
    @GetMapping(
            value = "/product/{productId}",
            produces = "application/json")
    Product getProduct(@PathVariable int productId);

    @PostMapping(
            value    = "/product",
            consumes = "application/json",
            produces = "application/json")
    Product createProduct(@RequestBody Product body);
    @DeleteMapping(value = "/product/{productId}")
    void deleteProduct(@PathVariable int productId);
}
