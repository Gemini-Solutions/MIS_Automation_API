package com.qa.mis.stepdefinitions;

import com.qa.mis.commonutils.Utils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.HashMap;

public class PolicySteps {
    int status;

    @Given("^Set endpoint \"(.*)\" and method \"(.*)\"$")
    public void Login(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        token.put("Authorization", Utils.GetAuthorization());
        status = Utils.LoginUser(url, method, token, "Login User").getStatus();
    }

    @Then("Verify Policy status code {int}")
    public void check_status_code(Integer Expected) {
        Utils.VerifyStatusCode(Expected, status);
    }

    @Given("^Set the Policy endpoint \"(.*)\" and method \"(.*)\"$")
    public void hitApiWithoutPayload(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
//        token.put("Authorization", Utils.getAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token, "").getStatus();
    }

    @Given("^Set the Policy endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\"$")
    public void hitApiWithPayload(String url, String method, String payloadName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, payloadName, token, "").getStatus();
    }

    @When("Set the Policy endpoint {string} , method {string} and {string} for invalid")
    public void setThePolicyEndpointMethodAndForInvalid(String url, String method, String payloadName) {
        HashMap<String, String> token = new HashMap<String, String>();
        try {
            status = Utils.APIwithPayloads(url, method, payloadName, token, "").getStatus();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
