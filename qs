import java.util.*;
public class quicksort
{
      private int array[];
      public void sort(int[] inputarr)
      {
            this.array=inputarr;
            quicksort1(0,inputarr.length-1);
      }
      public void quicksort1(int low, int high)
      {
             int i=low;
             int j=high;
             int pivot=array[(high+low)/2];
             while(i<=j)
             {
                     while(array[i]<pivot)
                      i++;
                     while(array[j]>pivot)
                       j--;
                     if (i<=j)
                      {
                              exchange(i,j);
                              i++;
                              j--;
                      }
              }
              if (low<j)
                 quicksort1(low,j);
              if (i<high)
                 quicksort1(i,high);
       }
       private void exchange(int i,int j)
       {
              int temp=array[i];
              array[i]=array[j];
              array[j]=temp;
       }
       public static void main(String args[])
       {
            quicksort sorter=new quicksort();
            int[] input=new int[5000];
            Random r=new Random();
            for (int j=0;j<5000;j++)
               input[j]=r.nextInt();
            long start=System.nanoTime();
             sorter.sort(input);
            long end=System.nanoTime();
            for (int i:input)
            {
                  System.out.println(i);
            }
            long t=end-start;
            System.out.println("Timen for sort ="+t+"ns");
     }
}
