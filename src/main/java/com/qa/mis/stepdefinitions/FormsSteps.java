package com.qa.mis.stepdefinitions;

import com.qa.mis.commonutils.Utils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.HashMap;

public class FormsSteps {
    int status;

    @Given("^Set endpoint \"(.*)\" and method \"(.*)\" for MIS login$")
    public void Login(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        token.put("Authorization", Utils.GetAuthorization());
        status = Utils.LoginUser(url, method, token, "").getStatus();
    }

    @Then("Verify status code {int}")
    public void check_status_code(int Expected) {
        Utils.VerifyStatusCode(Expected, status);
    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for department$")
    public void hitApiDepartment(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token, "").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for department data$")
    public void hitApiDepartmentData(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token, "").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for my forms$")
    public void hitApiMyForms(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token, "").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for employee directory$")
    public void hitApiEmployeeDirectory(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token, "").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for active forms$")
    public void hitApiActiveForms(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName, token, "").getStatus();

    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for user skill$")
    public void hitApiUserSkill(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName, token, "").getStatus();

    }

    @When("Set the endpoint {string} , method {string} and {string} for invalid headers")
    public void setTheEndpointMethodAndForInvalidHeaders(String url, String method, String payloadName) {
            HashMap<String, String> token = new HashMap<String, String>();
            try {
                status = Utils.APIwithPayloads(url, method, payloadName, token, "").getStatus();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }
