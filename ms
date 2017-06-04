Q.Sort a given set of n integer elements using merge sort technique & 
compute its time complexity.
This program gives the time taken by merge sort method for sorting 5000 
random elements..
import java.util.*;
public class Mergesort 
{
       public void sort(int a[],int low,int high)
        {
              int mid=0;
              int n=high-low;
              if (n<=1)
                   return;
               mid=low+n/2;
               sort(a,low,mid);
               sort(a,mid,high);
               int temp[]=new int[n];
               int i=low,j=mid;
               for (int k=0;k<n;k++)
               {
                      if(i==mid)
                         temp[k]=a[j++];
                      else if(j==high)
                          temp[k]=a[i++];
                      else if(a[j]<a[i])
                         temp[k]=a[j++];
                      else
                         temp[k]=a[i++];
               }
              for (int k=0;k<n;k++)
                a[low+k]=temp[k];
       }
       public static void main(String[] args)
       {
              Random r=new Random();
              int arr[]=new int[5000];
              for (int q=0;q<5000;q++)
                 arr[q]=r.nextInt();
              Mergesort m=new Mergesort();
                long start=System.nanoTime();
              m.sort(arr,0,5000);
              long end=System.nanoTime();
              System.out.println("Sortedy");
              for (int m1:arr)
                System.out.println(m1);
              System.out.println(end-start+"ns      }

}
