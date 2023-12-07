
use aiken/bytearray as ba 

pub fn pre_compiled_logic () {
 let (i, b) = (3 , #[1, 2, 3])
 ba.concat(ba.concat(b, b), push_many(i, b))
} 

pub fn push_many(i : Int, b: ByteArray) { 
   if i == 0 {                             
     b                                     
   } else {                                
     push_many(i - 1, ba.push(b, i))       
   }                                       
 }                                         
