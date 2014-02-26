package dk.cphbusiness.bank.view.frontController;

import dk.cphbusiness.bank.view.frontController.TargetCommand;
import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountSummary;
import dk.cphbusiness.bank.contract.dto.CustomerIdentifier;
import dk.cphbusiness.bank.view.Factory;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;

public class ListAccountsCommand extends TargetCommand {

  public ListAccountsCommand(String target) {
    super(target);
    }

  @Override
  public String execute(HttpServletRequest request) {
    BankManager manager = Factory.getInstance().getManager();
    CustomerIdentifier customer = CustomerIdentifier.fromString("121256-0555");
    Collection<AccountSummary> accounts = manager.listCustomerAccounts(customer);

    request.setAttribute("accounts", accounts);
    request.setAttribute("message", "This is a test");
    request.setAttribute("customer", customer);
    
    return super.execute(request);
    }
  
  
  
  }
