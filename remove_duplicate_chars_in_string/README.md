## Remove duplicate characters in a given string

Remove duplicate characters in a given string keeping only the first occurrences. For example, if the input is ‘tree traversal’ the output will be ‘tre avsl’.

We need a data structure to keep track of the characters we have seen so far, which can perform efficient find operation. If the input is guaranteed to be in standard ASCII form, we can just create a boolean array of size 128 and perform lookups by accessing the index of the character’s ASCII value in constant time. But if the string is Unicode then we would need a much larger array of size more than 100K, which will be a waste since most of it would generally be unused.



