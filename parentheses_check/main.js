module.exports = { 
 //param A : string
 //return an integer
	isValid : function(A){
        let parentheses = 0;
        let curly = 0;
        let square = 0;

        // O(n)
        for (i = 0; i < A.length; i++) {
            if (A[i] === "(") parentheses++
            if (A[i] === ")") parentheses--
            if (A[i] === "{") curly++
            if (A[i] === "}") curly--
            if (A[i] === "[") square++
            if (A[i] === "]") square--
        }
        
        return (curly + square + parentheses) === 0 ? 1 : 0;
	}
};

