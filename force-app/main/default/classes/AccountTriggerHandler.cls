/*******************************************************************************************
* @Name        AccountTriggerHandler
* @Author       Pooja Mane
* @Date         12/04/2021
* @Group        
* @Description  To Send notification when article has submitted for approval
*******************************************************************************************/
public class AccountTriggerHandler implements ITriggerInterface{
/*************************************************************************************** 
*@Description  This method will execute the before insert action
*@ParamString  List<SObject> newItems
*@Return       beforeInsert 
*@Example 
**************************************************************************************/    
    public void beforeInsert(List<SObject> newItems){
                //beforeInsert methods 
              /*  List<Account> lista = new List<account>();
        Account acc ;
        
        for(sObject item : newItems){
            acc=(Account)item;
            acc.name = acc.name + ' TriggerFactory';
            
        }*/
        AccountTriggerHelper.addAccString(List<SObject> newItems);
                    
                
        
    }
/*************************************************************************************** 
*@Description  This method will execute the before update action
*@ParamString  Map<Id, SObject> newItems, Map<Id, SObject> oldItems
*@Return       BeforeUpdate 
*@Example 
**************************************************************************************/
    public void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
      // System.debug('inside NewItem'+ newItems);
      //beforeUpdate
        
    }
    public void beforeDelete(Map<Id, SObject> oldItems) {
        //beforeDelete methods 
    }
    /*************************************************************************************** 
*@Description  This method will execute the after insert action
*@ParamString  Map<Id, SObject> newItems
*@Return       AfterInsert 
*@Example 
**************************************************************************************/
    public void afterInsert(Map<Id, SObject> newItems) {
        //After Insert Methods               
    }
    public void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) { 
        //afterUpdate methods
    
    }
    public void afterDelete(Map<Id, SObject> oldItems) {
        //afterDelete methods 
    }
    public void afterUndelete(Map<Id, SObject> newItems) {
        //afterUndelete methods 
    }    
}