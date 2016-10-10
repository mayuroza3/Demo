package language;

public class TestDemos {
	public static void main(String str[]){
		int i=0;
		Lang_Interface li;
		String lang="Guj";
		if(i==0){
			li=new Guj_Lang();;
		}
		else{
			li=new Eng_Lang();
		}
		
		System.out.println(li.CITY());
		
		
	}
}
