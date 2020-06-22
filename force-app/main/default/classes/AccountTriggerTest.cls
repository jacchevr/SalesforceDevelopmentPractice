@IsTest
public class AccountTriggerTest {

    @isTest static void createAccts(){
        List<Account> testAccts = new List<Account>();
        
        for(integer i = 0 ; i < 200 ; i++){
            Account a = new Account(Name = 'Test' + i,
                                   BillingState = 'CA');
            testAccts.add(a);
        }
        
        Test.startTest();
        insert testAccts;
        Test.stopTest();
        
        List<Account> verifyAccts = [SELECT Name, ShippingState, BillingState FROM Account WHERE ShippingState = 'CA' AND BillingState = 'CA'];
        System.assertEquals(200, verifyAccts.size());
    }
}