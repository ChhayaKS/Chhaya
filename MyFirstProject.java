package MyProject;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Scanner;

public class MyFirstProject {

	//@SuppressWarnings({ "resource", "unused" })
	public static void main(String[] args)
	{
		File f=new File("C:\\\\Users\\\\Chhaya\\\\Desktop\\\\New folder\\\\Project");
		String FName;
		char ch1,ch2;
		Scanner s=new Scanner(System.in);
		System.out.println("================================\n******************************\n======WELCOME TO MY PROJECT=====");
		System.out.println("Project Name : Lockme.com");
		System.out.println("Develper Name : Chhaya Askar \n*******************************\n=================================");
		
		do {
		System.out.println("\n============================\n======= Main Opetaion ======\n============================");	
		System.out.println("1.Retrive avaialble files in asceding order:");
		System.out.println("2.Perform business level operation:");
		System.out.println("3.Close the application: \n======================================");
		System.out.println("Please enter your choice which you want to perform: ");
		int choice1=s.nextInt();
		
		switch(choice1)
		{
		
		case 1:
			//System.out.println("Your list available of files in asceding order :");
			if(f.isDirectory())
			{
				File [] filelist=f.listFiles();
				Arrays.sort(filelist);
				System.out.println("Your list available of files sorted in asceding order : \n=====================");
                for(File f1:filelist)
                {
                 System.out.println(f1.getName());	
                }
			}
		break;
		case 2:
		
		do
		{	
		System.out.println("List of file Operation: \n==========================");
		System.out.println("1.File Creation");
		System.out.println("2.List of File");
		System.out.println("3.Delete File");
		System.out.println("4.Search file");
		System.out.println("5.exist");
		System.out.println("=====================================\nPlease enter you choice which you want to perform activity : ");
		int choice=s.nextInt();
	    
		switch(choice)
		{
		case 1://File creation code
			try
			{
			System.out.println("Please enter file name which you want to create");
			FName=s.next();
			File f1=new File("C:\\Users\\Chhaya\\Desktop\\New folder\\Project\\"+FName+".txt");
				if(f1.createNewFile())
				{
				System.out.println("Your file is created successfully : "+FName);
				}
				else
				{
					System.out.println("File already exist..");
				}
		     } 
 			catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		break;
		case 2://List of available files in folder
			  
			System.out.println("Your List of files and Folder:");
			File f2 = new File("C:\\Users\\Chhaya\\Desktop\\New folder\\Project");
			File[] listOfFiles = f2.listFiles();
			for (File f21:listOfFiles)
			{
			if (f21.isDirectory()) 
			 {
			  System.out.println(f.getName());
			 } 
			else if (f21.isFile()) 
			 {
			   System.out.println(f21.getName());
			 }
			}
		break;	
		case 3://Code for delete file
			
			System.out.println("Enter the file name which you want to delete :");
    		 FName=s.next();
    	     File f3=new File("C:\\Users\\Chhaya\\Desktop\\New folder\\Project\\"+FName+".txt");
    	    
    		if(f3.delete())
    		{
    			System.out.println("Your file deleted successfully : "+FName);
    	    }
    		else
    		{
    			System.out.println("File not found....");
    		}
			
		break;	
		case 4://Code for search file
			
			System.out.println("Enter the file name which you want to Search :");
   		    FName=s.next();
   		    File f4 = new File("C:\\Users\\Chhaya\\Desktop\\New folder\\Project\\"+FName +".txt");
   		    if(f4.exists())
   		    {
   		    	System.out.println("===================\nyour file available : "+FName);
   		    }else {
   		    	System.out.println("File Not found..");
   		    }
   		    
   		 
		break;
		case 5://Code for exist
			
			System.out.println("Thanks you User for you Cooporation ...... ");
		break;
		default:
			System.out.println("Invide Choice......");
		break;
			
		}
		
		
		System.out.println("=================================\nDO you want to contionue (Y/N):");
		ch1=s.next().charAt(0);
		 
		 
	} while(ch1=='Y'||ch1=='y');
		
		
	break;
	case 3:
		System.out.println("Thank you use for your cooperation \nYour application closed successfully......");
	break;
	default:
		System.out.println("Invalide choice....");
	break;
		}
		System.out.println("Thanks you for performing operations..... ");
		
		System.out.println("===========================\nDO you want go back to main Operation (Y/N):");
		ch2=s.next().charAt(0);
 
	}while(ch2=='Y'||ch2=='y');
}
}