public with sharing class AccountUtils {
    
    public static List<Account> accountsByState(String state) {
            List<Account> stateAccounts = [SELECT Id, Name FROM Account WHERE BillingState = :state];

            return stateAccounts;
    }

}