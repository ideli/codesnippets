package at.fhj.itm.i18n;

import java.util.Locale;

public class LanguageBean {
	// available languages:
	private Locale ger = new Locale("DE");
	private Locale en = new Locale("EN");

	// current selection:
	private Locale locale=en;
	private String selectedLanguage=locale.getLanguage();

	public String getSelectedLanguage() {
		return locale.getLanguage();
	}
	public void setSelectedLanguage(String selectedLanguage) {
		this.selectedLanguage = selectedLanguage;
	}

	public void setLocale(Locale newloc){
		this.locale=newloc;
	}
	public Locale getLocale(){
		return this.locale;
	}

	public String changeLanguage() {  
        if (selectedLanguage.equals(ger.getLanguage())) {  
            locale =ger;  
        } else {  
            locale =en;  
        }  
        return "success";  
	} 	 
	

	
}
