package loadingresources;

import java.awt.Image;
import java.awt.Toolkit;
import java.net.URL;

public class LoadingAnImageFromALocalResource {

	public LoadingAnImageFromALocalResource(){
		URL backImgUrl = this.getClass().getResource("back.png");
		Image backImage= Toolkit.getDefaultToolkit().getImage(backImgUrl);
		
		assert backImage.getHeight(null) != -1;
	}
	
	public static void main(String[] args) {
		new LoadingAnImageFromALocalResource();
	}

}
