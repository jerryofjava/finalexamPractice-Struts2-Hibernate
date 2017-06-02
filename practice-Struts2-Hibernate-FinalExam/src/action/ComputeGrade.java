package action;

import model.Grade;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.HibernateException;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class ComputeGrade extends ActionSupport implements ModelDriven<Grade>  {

	Grade grade=new Grade();
	
	public String execute()
	{
		grade.setSemGrade(((grade.getPrelim()*0.5)+(grade.getFinals()*0.5)));
		if(grade.getSemGrade()<=59)
		{
			grade.setDecimalGrade(5);
		}
		else if(grade.getSemGrade()>=60&&grade.getSemGrade()<=64)
		{
			grade.setDecimalGrade(3);
		}
		else if(grade.getSemGrade()>=65&&grade.getSemGrade()<=69)
		{
			grade.setDecimalGrade(2.75);
		}
		else if(grade.getSemGrade()>=70&&grade.getSemGrade()<=72)
		{
			grade.setDecimalGrade(2.50);
		}
		else if(grade.getSemGrade()>=73&&grade.getSemGrade()<=77)
		{
			grade.setDecimalGrade(2.25);
		}
		else if(grade.getSemGrade()>=78&&grade.getSemGrade()<=81)
		{
			grade.setDecimalGrade(2);
		}
		else if(grade.getSemGrade()>=82&&grade.getSemGrade()<=86)
		{
			grade.setDecimalGrade(1.75);
		}
		else if(grade.getSemGrade()>=87&&grade.getSemGrade()<=90)
		{
			grade.setDecimalGrade(1.50);
		}
		else if(grade.getSemGrade()>=91&&grade.getSemGrade()<=93)
		{
			grade.setDecimalGrade(1.25);
		}
		else if(grade.getSemGrade()>=94&&grade.getSemGrade()<=100)
		{
			grade.setDecimalGrade(1);
		}
		
		if(grade.getDecimalGrade()==5)
		{
			grade.setRemarks("Failed");
		}
		else if(grade.getDecimalGrade()==3)
		{
			grade.setRemarks("Passed");
		}
		else if(grade.getDecimalGrade()==2.75||grade.getDecimalGrade()==2.50)
		{
			grade.setRemarks("Fair");
		}
		else if(grade.getDecimalGrade()==2.25||grade.getDecimalGrade()==2||grade.getDecimalGrade()==1.75)
		{
			grade.setRemarks("Good");
		}
		else if(grade.getDecimalGrade()==1.50||grade.getDecimalGrade()==1.25)
		{
			grade.setRemarks("Very Good");
		}
		else if(grade.getDecimalGrade()==1)
		{
			grade.setRemarks("Excellent");
		}
		
		SessionFactory sessionFactory = 
				new Configuration().configure().buildSessionFactory();
			
			Session session = sessionFactory.openSession();
			org.hibernate.Transaction tx = session.beginTransaction();
			
			try{
				session.save(grade);
				tx.commit();
			} catch(HibernateException he){
				tx.rollback();
			}
			
		return SUCCESS;
	}
	
	@Override
	public void validate()
	{
		if(Double.toString(grade.getPrelim()).trim().length()==0)
		{
			addFieldError("prelim","Missing entry for prelim raw score");
		}
		if(Double.toString(grade.getFinals()).trim().length()==0)
		{
			addFieldError("finals","Missing entry for final raw score");
		}
		if(grade.getPrelim()<0)
		{
			addFieldError("prelim","Prelim raw score cannot be negative");
		}
		if(grade.getFinals()<0)
		{
			addFieldError("finals","Final raw score cannot be negative");
		}
	}
	
	@Override
	public Grade getModel() {
		
		return grade;
	}
}
