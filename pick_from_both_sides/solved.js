module.exports = { 
 //param A : array of integers
 //param B : integer
 //return an integer
	solve : function(A, B){
      if (B > A.length) throw Error('The B is greater than the array length') 
        /**
         * This is O(2n) complexity solution
         */
        // decisionA = 0;
        // decisionB = 0;
        
        // // O(n)
        // for (i = 1; i < B; i++) {
        //     decisionA += A[i];
        // }
        
        // // O(n)
        // for (i = 0; i < B; i++) {
        //     decisionB += A[A.length - 1 - i];
        // }
        
        // // O(2n)
        // return Math.max(decisionA, decisionB)
      
        /**
         * This is O(n) complexity solution
         * TODO: for B < A.length/2 - we must remove the gap between the left and right ranges.
         */
        
        decisionLeft = 0;
        decisionRight = 0;
        
        for (i = 0; i < A.length; i++) {
            if(i < B) decisionLeft += A[i]
            if(i >= A.length - B) decisionRight += A[i]
        }
        
        return Math.max(decisionLeft, decisionRight);
	}
};
