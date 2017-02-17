package db;
import java.io.*;
public class virus
{
	public static int count=0;
	public static int count2=0;
	public static void listfile(String drive) throws IOException
	{
		
		
		File path=new File(drive);
		File files[]=path.listFiles();
		if(files!=null)
		{
		
		
			for(int i=0;i<files.length;i++)
			{
				count2++;
				
				if(files.length==0)
				{
					System.out.println("");
				}
				else
				{
//					System.out.println("compiling");
					try
					{
					
						String filename=files[i].toString();
						
						
						if(filename.endsWith(".exe"))
						{
							count++;
							
							//Thread.sleep(1000);
							System.out.println("virus files are..."+filename);
							files[i].delete();
						}
						if(files[i].isDirectory())
						{
				
							listfile(files[i].toString());
				
						}
					}
					catch (Exception ee)
					{
						ee.printStackTrace();
					}
				}
			}
		}
		else
		{
			//proxy1.jLabel3.setText("completed.....");
		}
	}
		/*	public static void scanning(String drive)
	{
				try
				{
					System.out.println("Scanning Started..."+drive);
					listfile(new File(drive));
				}
				catch (Exception e)
				{
					System.out.println("Successfully scanning completed");
				}
			//return 0;	
	}*/
/*	public static void main(String args[]) throws IOException
	{
		virus v=new virus();
		v.listfile("E:\\");
	}*/
}