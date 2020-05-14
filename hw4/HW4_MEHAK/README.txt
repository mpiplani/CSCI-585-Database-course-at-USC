HW 5

Question  1: 

Linear Regression Equation:
class =

     -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +
     36.3411
	 
The number of terms in the equation are 12. The first 11 terms are weight * features and the last term is intercept.

The three features INDUS, AGE, and CHAS=0 are not present in the equation because of the attribute selection M5 method which 
initially builds on all descriptors, and then descriptors with the smallest standardized regression coefficients are step-wisely 
removed from the model until no improvement is observed in the estimate of the average prediction error given by the 
Akaike information criterion and in our case removing these 3 features did not affect the error value.


Question 2:

Neural Network

The lowest RMSE is: 2.34
Learning Rate: 0.115
Momentum: 0.2999
The network has 2 hidden layers with nodes count of 8 and 2.

My other trials include:
LAYERS   LR    MOMENTUM    RMSE
8,2     0.12    0.299     2.345
8,2     0.112   0.299     2.341
8,2     0.101   0.299     2.349
8,2     0.112   0.28      2.345	
8,3     0.116   0.28      2.358	
5       0.115   0.299     2.817	

and many more.


Question 3:

Linear Regression Equation:

num_rings =
	sex=I          * -0.8248762648052554  +
	sex=M          * 0.057715674939701284 +
	length         * -0.45833541624125296 +
	diameter       * 11.075102542904558   +
	height         * 10.761536699123804   + 
	whole_weight   * 8.975444620485794    +
	shucked_weight * -19.7868668634496    +
	viscera_weight * -10.58182703416007   +
	shell_weight   * 8.74180579669353     +
	3.8946414238675753
	

Question 5:

Cluster 0: 1388 items
Cluster 1: 499 items
Cluster 2: 448 items
Cluster 3: 22 items
Cluster 4: 172 items
Cluster 5: 1648 items
Total number of items: 4177

Question 6:

Linear Regression Equation:

num_rings =
	length		*	-11.93268095460935 +
	diameter	*	25.766147216231733 +
	height		*	20.358233950789312 +
	2.8364790622857248