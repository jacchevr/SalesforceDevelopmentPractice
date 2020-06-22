public class AccountTriggerHandler {

    public static void CreateAccounts(List<Account> accts){
        List<Account> newAccounts = new List<Account>();
        for(Account a : accts){
            a.ShippingState = a.BillingState;
            newAccounts.add(a);
        }
        //if (newAccounts.size() > 0) {
         //   insert newAccounts;
    	//}
	}
}