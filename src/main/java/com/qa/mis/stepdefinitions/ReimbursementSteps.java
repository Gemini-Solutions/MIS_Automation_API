package com.qa.mis.stepdefinitions;

import com.qa.mis.commonutils.Utils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.HashMap;

public class ReimbursementSteps {
    int status;
    @Given("^Set the Reimbursement endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\"$")
    public void hitApiWithPayload(String url, String method,String payloadName) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs",Utils.GetUser());
        token.put("Token",Utils.GetToken());
        status = Utils.APIwithPayloads(url, method,payloadName,token,"").getStatus();
    }
    @Given("^Set the Reimbursement endpoint \"(.*)\" and method \"(.*)\"$")
    public void hitApiWithoutPayload(String url, String method) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        System.out.println(Utils.GetToken());
//        token.put("Authorization", Utils.getAuthorization());
        token.put("UserAbrhs",Utils.GetUser());
        token.put("Token",Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method,token,"").getStatus();
    }

    @Then("^Verify Reimbursement status code (.*)$")
    public void verifyReimbursementstatuscode(int Expected) {
        Utils.VerifyStatusCode(Expected, status);
    }

    @When("Set the Reimbursement endpoint {string} , method {string} and {string} for invalid")
    public void setTheReimbursementEndpointMethodAndForInvalid(String url, String method, String payloadName) {
        HashMap<String, String> token = new HashMap<String, String>();
        try {
            status = Utils.APIwithPayloads(url, method, payloadName, token, "").getStatus();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
