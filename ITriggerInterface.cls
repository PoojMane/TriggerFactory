/*******************************************************************************************
* @Name             ITriggerInterfaceTriggerInterface
* @Author           Pooja Mane <poojmane@in.ibm.com>
* @Group            Trigger Framework
* @Description   	Trigger Framework Interface to abstract the trigger implementation methods
*******************************************************************************************/
/* MODIFICATION LOG
* Version          Developer          Date               Description
*-------------------------------------------------------------------------------------------
*  1.0              Pooja      	              Initial Creation                                                      
*******************************************************************************************/

public interface ITriggerInterface {	  
    /*
    @Description : Called by the trigger framework before insert of the records
    @Parameters : List<SObject> newItems
    */
    void beforeInsert(List<SObject> newItems);
    /*
    @Description : Called by the trigger framework after insert of the records
    @Parameters : Map<Id, SObject> newItems
    */
    void afterInsert(Map<Id, SObject> newItems);
    /*
    @Description : Called by the trigger framework before update of the records
    @Parameters : Map<Id, SObject> newItems, Map<Id, SObject> oldItems
    */
    void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems);
    /*
    @Description : Called by the trigger framework after update of the records
    @Parameters : Map<Id, SObject> newItems, Map<Id, SObject> oldItems
    */
    void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems);
    /*
    @Description : Called by the trigger framework before delete of the records
    @Parameters : Map<Id, SObject> oldItems
    */           
    void beforeDelete(Map<Id, SObject> oldItems);
    /*
    @Description : Called by the trigger framework after delete of the records
    @Parameters : Map<Id, SObject> oldItems
    */
    void afterDelete(Map<Id, SObject> oldItems);
    /*
    @Description : Called by the trigger framework after undelete of the records
    @Parameters : Map<Id, SObject> oldItems
    */    
	void afterUndelete(Map<Id, SObject> oldItems);
    
}