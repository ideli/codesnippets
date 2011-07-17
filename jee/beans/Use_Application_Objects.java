import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

public class Products extends ...{

	public boolean add(DVD newDVD){
		...
		ExternalContext ctx = FacesContext.
			getCurrentInstance().
				getExternalContext();

		dbm   =  (DBManager) ctx.getApplicationMap().get("dbmgr");
		...
	}
...
}