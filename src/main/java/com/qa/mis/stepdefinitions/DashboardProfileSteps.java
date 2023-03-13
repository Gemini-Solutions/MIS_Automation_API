package com.qa.mis.stepdefinitions;

import com.qa.mis.commonutils.Utils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import java.util.HashMap;

public class DashboardProfileSteps {
    int status;

    @Given("^Set endpoint \"(.*)\" and method \"(.*)\" for Login Dashboard Authentication$")
    public void LoginDshbrdAuth(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        token.put("Authorization", Utils.GetAuthorization());
        status = Utils.LoginUser(url, method, token, "LoginUser").getStatus();
    }

    @Then("Verify status code {int}")
    public void check_status_code(int Expected) {
        Utils.VerifyStatusCode(Expected, status);
    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\"$")
    public void hitApiWithoutPayload(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for Dashboard Calendar Data$")
    public void hitApiDashboardCalendar(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Current Time Day Data$")
    public void hitApiTimeDay(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();

    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get My Referral$")
    public void hitApiMyReferral(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();

    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for User Get Referral$")
    public void hitApiGetReferral(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for User Get Cab Request$")
    public void hitApiCabRequest(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method, token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get Upcoming Birthday And Holiday$")
    public void hitApiBirthdyAndHoliday(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();

    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get Leave Balance Data$")
    public void hitApiForLveBalData(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();

    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get User Skills Data Dashboard$")
    public void hitApiSkillsDataDashboard(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get Work Anniversary$")
    public void hitApiGetWorkAnniversary(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get Teams leave$")
    public void hitApiUsrTeamLevs(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get Cab Request Details$")
    public void hitApiCabReqDetails(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Get Self Attendance Data$")
    public void hitApiSlfAttncData(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method, sampleName,token,"").getStatus();
    }

    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for Data For Employee Directory$")
    public void hitApiDataEmpDirct(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method,token,"").getStatus();

    }
    @Given("^Set the endpoint \"(.*)\" and method \"(.*)\" for User Role Dashboard Settings$")
    public void hitApiRoleDshbrdSetng(String url, String method) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithoutPayloads(url, method,token,"").getStatus();

    }

    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for News For Slider$")
    public void hitApiNewsForSlidr(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method,sampleName,token,"").getStatus();
    }
    @Given("^Set the endpoint \"(.*)\" , method \"(.*)\" and \"(.*)\" for User Profile Data$")
    public void hitApiUsrPrflData(String url, String method, String sampleName) throws Exception {
        HashMap<String, String> token = new HashMap<String, String>();
        System.out.println(Utils.GetToken());
        token.put("Authorization", Utils.GetAuthorization());
        token.put("UserAbrhs", Utils.GetUser());
        token.put("Token", Utils.GetToken());
        status = Utils.APIwithPayloads(url, method,sampleName,token,"").getStatus();
    }


    }
