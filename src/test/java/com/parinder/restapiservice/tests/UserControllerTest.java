package com.parinder.restapiservice.tests;

import io.qameta.allure.Step;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.testng.annotations.Test;

import static io.restassured.RestAssured.given;

public class UserControllerTest {

    private final RequestSpecification spec;

    public UserControllerTest() {
        this.spec = new RequestSpecBuilder().setBaseUri("http://localhost:10222/api/v1").build();
    }

    @Test
    @Step("Submit GET to '/users'")
    public void testGetUsers() {
        Response response = (Response) given().spec(this.spec).when().get("/users").then().statusCode(200);

    }
}
