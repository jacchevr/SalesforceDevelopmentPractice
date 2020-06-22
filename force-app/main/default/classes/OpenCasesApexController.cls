public with sharing class OpenCasesApexController {
	@AuraEnabled
    public static List<Case> getCasesDB() {
        String [] caseFields = new String [] {'Id', 'OwnerId',
            'Type', 'Status',
            'Priority', 'IsClosed',
            'Reason', 'Origin' };
        Map<String, Schema.SObjectField> caseMap = 
            Schema.SObjectType.Case.fields.getMap();
        for (string field : caseFields) {
            if (!caseMap.get(field).getDescribe().isAccessible()) {
                System.debug('This field was not accessible: ' + caseMap.get(field));
                return null;
            }
        }
        return[SELECT Id 
               FROM Case 
               WHERE IsClosed = false
              AND OwnerId =: UserInfo.getUserId()];
    }
    
}