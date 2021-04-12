public class AccountTriggerHelper{

 public void addAccString(List<SObject> accList){
                //beforeInsert methods 
                List<Account> lista = new List<account>();
        Account acc ;
        
        for(sObject item : accList){
            acc=(Account)item;
            acc.name = acc.name + ' TriggerFactory';
            
        }
}