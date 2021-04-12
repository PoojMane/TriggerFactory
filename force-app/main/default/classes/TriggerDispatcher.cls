/*******************************************************************************************
* @Name             TriggerDispatcher
* @Author           Pooja Mane <poojmane@in.ibm.com>
* @Date             10/02/2021 <dd/mm/yyyy>
* @Group            Trigger Framework
* @Description   	Trigger Dispatcher class as part of Trigger framework to call the trigger handler methods
* 					for the trigger invoked
*******************************************************************************************/
/* MODIFICATION LOG
* Version          Developer          Date               Description
*-------------------------------------------------------------------------------------------
*  1.0              Pooja      	10/02/2021          Initial Creation                                                      
*******************************************************************************************/
public class TriggerDispatcher {
    /**************************************************************************************
	* @Description  Call this method from your trigger, passing in an instance of a trigger handler which implements TriggerHandler.
	*				This method will fire the appropriate methods on the handler depending on the trigger context.
	* @Param        handler - Handler instance implementing interface
	* @Return       objName - Object Name of the Trigger 
	* @Example     
	**************************************************************************************/
	public static void run(ITriggerInterface handler,sObjectType objName)
    {
    	Boolean isActive = Util.getDisabledTrigger(objName);
        if(isActive){
            //Check trigger context from trigger operation type
            switch on Trigger.operationType {
                when BEFORE_INSERT {
                    //Invoke before insert trigger handler
                    handler.beforeInsert(trigger.new);
                }
                when AFTER_INSERT {
                    //Invoke after insert trigger handler
                    handler.afterInsert(Trigger.newMap);
                }
                when BEFORE_UPDATE {
                    //Invoke before update trigger handler
                    handler.beforeUpdate(trigger.newMap, trigger.oldMap);
                }
                when AFTER_UPDATE {
                    //Invoke after update trigger handler
                    handler.afterUpdate(trigger.newMap, trigger.oldMap);
                }
                when BEFORE_DELETE {
                    //Invoke before delete trigger handler
                    handler.beforeDelete(trigger.oldMap);
                }
                when AFTER_DELETE {
                    //Invoke after delete trigger handler
                    handler.afterDelete(trigger.oldMap);
                }
                when AFTER_UNDELETE {
                    //Invoke after undelete trigger handler
                    handler.afterUndelete(trigger.newMap);
                }
            }
        }        
    }
}