package language;

public class Eng_Lang extends Lang_Class implements Lang_Interface{
	public static final String LANGUAGE="English";
	
	public String LANGUAGE(){
		return LANGUAGE;
	}

	@Override
	public String STUDENT_NAME() {
		// TODO Auto-generated method stub
		//System.out.println(x);
		return "Student Name";
	}

	@Override
	public String VILLAGE() {
		// TODO Auto-generated method stub
		return "Village Name";
	}

	@Override
	public String POST() {
		// TODO Auto-generated method stub
		return "Post";
	}

	@Override
	public String CITY() {
		// TODO Auto-generated method stub
		return "Taluka";
	}

	@Override
	public String DISTRICT() {
		// TODO Auto-generated method stub
		return "District";
	}

	@Override
	public String PHONE() {
		// TODO Auto-generated method stub
		return "Phone";
	}

	@Override
	public String DOB() {
		// TODO Auto-generated method stub
		return "Date of Birth";
	}

	@Override
	public String DOJ() {
		// TODO Auto-generated method stub
		return "Date of Joining";
	}

	@Override
	public String GURDIAN_NAME() {
		// TODO Auto-generated method stub
		return "Gurdian's Name";
	}

	@Override
	public String RELATION() {
		// TODO Auto-generated method stub
		return "Relation";
	}

	@Override
	public String SCHOOL() {
		// TODO Auto-generated method stub
		return "School";
	}

	@Override
	public String STANDARD_ON_ADMISSION() {
		// TODO Auto-generated method stub
		return "Standard when Admitted";
	}

	@Override
	public String STANDARD_CURRENT() {
		// TODO Auto-generated method stub
		return "Current Standard";
	}

	@Override
	public String PREVIOUS_EXAM() {
		// TODO Auto-generated method stub
		return "Previous exam";
	}

	@Override
	public String OBTAINED_MARKS() {
		// TODO Auto-generated method stub
		return "Obtained marks";
	}

	@Override
	public String TOTAL_MARKS() {
		// TODO Auto-generated method stub
		return "Total marks";
	}

	@Override
	public String PERCENTAGE() {
		// TODO Auto-generated method stub
		return "Percentage";
	}

	@Override
	public String EX_YEAR_IN_HOSTEL() {
		// TODO Auto-generated method stub
		return "Year If stayed in this hostel in past";
	}

	@Override
	public String PINCODE() {
		// TODO Auto-generated method stub
		return "PINCODE";
	}

	@Override
	public String TotalMarks() {
		// TODO Auto-generated method stub
		return "TotalMarks";
	}
}
