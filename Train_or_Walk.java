import java.util.*;


public class Train_or_Walk {
    int N,A,B,C,D,P,Q,Y;
        Scanner in=new Scanner(System.in);
        Train_or_Walk(){
            N=in.nextInt();
            A=in.nextInt();
            B=in.nextInt();
            C=in.nextInt();
            D=in.nextInt();
            P=in.nextInt();
            Q=in.nextInt();
            Y=in.nextInt();

        }

        public void Time(){
            int walk= Math.abs(A-B)*P;
            int train=0;

            train=Math.abs(C-A)*P;

            if(train>Y){
                walk=walk;

            }
            else  if (train<=Y){
                train=Y;
                train+=Math.abs(C-D)*Q;

                if(B==D){
                    train=train;
                }

                else if(B!=D){
                    train+=Math.abs(B-D)*P;


                }

            }


            System.out.println(Math.min(walk,train));
    }

    public static void main(String[] args){
        Scanner inm =new Scanner(System.in);

        int T=inm.nextInt();

        for(int i=0;i<T;i++){
            Train_or_Walk obj=new Train_or_Walk();


            int[] track=new int[obj.N];
            Scanner ina=new Scanner(System.in);

            for(int j=0;j<obj.N;j++){
                track[j]=ina.nextInt();
            }

            obj.Time();

        }

    }
}


/*1
        4 1 3 2 4 3 2 4
        1 2 3 4

 */