package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import Utulities.GWD;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.testng.Assert;

public class _01_RegisterSteps {

    DialogContent dc=new DialogContent();
    @Given("Navigate to parabank")
    public void navigateToParabank() {
        GWD.getDriver().get("https://parabank.parasoft.com/parabank/index.htm");
        GWD.getDriver().manage().window().maximize();

    }

    @Then("Succes message should be displayed")
    public void succesMessageShouldBeDisplayed() {
        dc.verifyContainsTextFunction(dc.successMessage,"success");
    }

    @Then("if you see logout then successlogin")
    public void ifYouSeeLogoutThenSuccesslogin() {
        Assert.assertTrue(dc.logout.getText().toLowerCase().contains("log out"));
    }

    @Then("negative success message is displayed")
    public void negativeSuccessMessageIsDisplayed() {
        dc.verifyContainsTextFunction(dc.negativesuccess,"not be verified");
    }

    @Then("Succes payment bill")
    public void succesPaymentBill() {
        dc.verifySuccesOrder(dc.verifyOrder,"complete");
    }
}
