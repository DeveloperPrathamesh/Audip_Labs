// Write a program to merge the contents of two files, “file1.txt” and “file2.txt”,
//  into a new file named “merged.txt”


const fs = require('fs');


fs.readFile('file1.txt', 'utf-8', (err,data1)=>{
    // first read the file file1.txt and stored its contents in 'data1'

    if(err){
        console.log('error in reading the file', err);
    }
    else{
        fs.readFile('file2.txt', 'utf-8', (err,data2)=>{
            // then read the file file2.txt and stored its contents in 'data2'

            if(err){
                console.log('error in reading the file', err);
            }
            else{
                let finalData = data1+'\n'+data2;
                // merged the data from both the files into a single finalData

                fs.writeFile('merged.txt', finalData, (err)=>{
                    // written the merged data into a new file 'merged.txt'

                    if(err){
                        console.log('error while reading the file', err);                        
                    }
                    else{
                        console.log('file merged successfully!!!');
                    }
                })
            }
            
        })
    }
})