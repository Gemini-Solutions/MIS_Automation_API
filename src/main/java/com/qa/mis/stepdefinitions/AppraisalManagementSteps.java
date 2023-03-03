package com.qa.mis.stepdefinitions;

import com.qa.mis.commonutils.*;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import java.util.HashMap;

public class AppraisalManagementSteps {
    int status;

    @Given("^Set endpoint and method \"(.*)\" and \"(.*)\"$")
    public void Login(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        token.put("Authorization", Utils.GetAuthorization());
        status = Utils.LoginUser(url, method, token, "Successful Login").getStatus();
    }

    @Then("^Verify Status code (.+)")
    public void check_status_code(int Expected) {
        Utils.VerifyStatusCode(Expected, status);
    }

    @Given("^Set endpoint and method \"(.+)\" and \"(.+)\" invalid Header$")
    public void invalidLogin(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        token.put("Authentication", Utils.GetAuthorization());
        status = Utils.APIwithoutPayloads(url, method, token, "").getStatus();
    }

    @Given("Fetch User endpoint and method {string} and {string}")
    public void fetchUserEndpointAndMethod(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithoutPayloads(url, method, token, "User Details using ID").getStatus();
    }

    @Given("Fetch project endpoint and method and sample {string} and {string} and {string}")
    public void fetchProjectEndpointAndMethodAndSample(String url, String method, String sample) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url, method, sample, token, "User Details using ID").getStatus();
    }

}

