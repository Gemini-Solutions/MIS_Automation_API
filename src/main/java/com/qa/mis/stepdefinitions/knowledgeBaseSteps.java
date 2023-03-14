package com.qa.mis.stepdefinitions;

import com.qa.mis.commonutils.Utils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.HashMap;

public class knowledgeBaseSteps {

    int status;
    @Given("^Set the KnowledgeBase endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\"$")
    public void hitApiWithPayload(String url, String method,String payloadName) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs",Utils.GetUser());
        token.put("Token",Utils.GetToken());
        status = Utils.APIwithPayloads(url, method,payloadName,token,"").getStatus();
    }
    @Then("^Verify KnowledgeBase status code (.+)$")
    public void check_status_code(int Expected) {
        Utils.VerifyStatusCode(Expected, status);
    }

    @When("Set the KnowledgeBase endpoint {string} , method {string} and {string} for invalid")
    public void setTheKnowledgeBaseEndpointMethodAndForInvalid(String url, String method, String payloadName) {
        HashMap<String, String> token = new HashMap<String, String>();
        try {
            status = Utils.APIwithPayloads(url, method, payloadName, token, "").getStatus();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
