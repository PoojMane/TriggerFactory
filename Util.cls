/*******************************************************************************************
* @Name             Util
* @Author           Pooja Mane <poojmane@in.ibm.com>
* @Date             10/02/2021 <dd/mm/yyyy>
* @Group            Utility Methods
* @Description   	Class containing commonly used methods which can be reused
*******************************************************************************************/
/* MODIFICATION LOG
* Version          Developer          Date               Description
*-------------------------------------------------------------------------------------------
*  1.0              Pooja      	10/02/2021          Initial Creation                                                      
*******************************************************************************************/
public class Util {
    /**************************************************************************************
* @Description  This method fetches the trigger active status based on running user profile
* @Param        objName - SObjectType
* @Return       Boolean - Value returned on trigger active status. 
* @Example     
* Util.getDisabledTrigger(Case)
**************************************************************************************/
    public static Boolean getDisabledTrigger(SObjectType objName){
        Boolean isTriggerActive = false;
        Schema.DescribeSObjectResult schema = objName.getDescribe();
        String objectName = schema.getName(); // Get the object API name in string format.
        Id profileId = UserInfo.getProfileId(); // Get the Profile Id of the running user who invoked the trigger
        TriggerPreferenace__c triggerPreferenace =  TriggerPreferenace__c.getInstance(profileId);// Get the custom setting instance for the profile Id
        if(triggerPreferenace != null && triggerPreferenace.sObject_Name__c != null && triggerPreferenace.sObject_Name__c.containsIgnoreCase(objectName)){ // check if the custom setting object name field contains the running trigger object{
            isTriggerActive = triggerPreferenace.IsActive__c;
        }
        return isTriggerActive;
    }
    
    
    }