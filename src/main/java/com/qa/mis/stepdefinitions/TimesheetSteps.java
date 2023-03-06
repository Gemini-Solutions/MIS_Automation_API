package com.qa.mis.stepdefinitions;

import com.qa.mis.commonutils.Utils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import java.util.HashMap;

public class TimesheetSteps {
    int status;
    @Given("^Set Authenticate endpoint and method \"(.*)\" and \"(.*)\"$")
    public void Login(String url, String method) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Authorization", Utils.GetAuthorization());
        status = Utils.LoginUser(url, method,token,"Successful Login").getStatus();
    }

    @Then("^Verify Status code (.+)")
    public void check_status_code(int Expected) {
        Utils.VerifyStatusCode(Expected, status);
    }

    @Given("^Set Unsuccessful Authenticate endpoint and method \"(.+)\" and \"(.+)\" invalid Header$")
    public void invalidLogin(String url, String method) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Authentication", Utils.GetAuthorization());
        status = Utils.APIwithoutPayloads(url,method,token,"").getStatus();
    }

    @Given("Set User Detail endpoint and method and payload {string} and {string} and {string}")
    public void userDetailEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }

    @Given("Set Eligible User endpoint and method {string} and {string}")
    public void eligibleUserEndpointAndMethodAndSampleAndAnd(String url, String method) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithoutPayloads(url,method,token,"User Details using ID").getStatus();
    }

    @Given("Set Employee Directory endpoint and method {string} and {string}")
    public void employeeDirectoryEndpointAndMethodAndSampleAnd(String url, String method) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithoutPayloads(url,method,token,"User Details using ID").getStatus();
    }

    @Given("Set Fetch project endpoint and method and payload {string} and {string} and {string}")
    public void fetchProjectEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }

    @Given("Set Week Info endpoint and method and payload {string} and {string} and {string}")
    public void weekInfoEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }

    @Given("Set Timesheet Info endpoint and method and payload {string} and {string} and {string}")
    public void timesheetInfoEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }

    @Given("Set Project for Timesheet endpoint and method and payload {string} and {string} and {string}")
    public void projectForTimesheetEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }

    @Given("Set Task Logged for Timesheet endpoint and method and payload {string} and {string} and {string}")
    public void taskLoggedForTimesheetEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }

    @Given("Set Fetch Template for User endpoint and method and payload {string} and {string} and {string}")
    public void fetchTemplateForUserEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }

    @Given("Set Fetch Task Teams endpoint and method {string} and {string}")
    public void fetchTaskTeamsEndpointAndMethodAndSampleAnd(String url, String method) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithoutPayloads(url,method,token,"User Details using ID").getStatus();
    }

    @Given("Set Fetch Task Type endpoint and method and payload {string} and {string} and {string}")
    public void fetchTaskTypeEndpointAndMethodAndSampleAndAnd(String url, String method, String sample) throws Exception {
        HashMap<String,String> token=new HashMap<String,String>();
        token.put("Token", Utils.GetToken());
        token.put("UserAbrhs", Utils.GetUser());
        status = Utils.APIwithPayloads(url,method,sample,token,"User Details using ID").getStatus();
    }


}

