// Write a program to copy the contents of a file named source.txt to a new file named destination.txt.
// Check if the source file exists before copying.

const fs = require('fs');  


fs.access('source.txt', fs.constants.F_OK, (err) => {
    // checking if the source.txt file exixts or not asynchronously using fs.access

    if (err) {
        console.log('File does not exist!!!');
    } else {
        fs.readFile('source.txt', 'utf-8', (err, data) => {
            // reading the file data and storing it in 'data'

            if (err) {
                console.log('Error reading file:', err);
            } else {
                fs.writeFile('destination.txt', data, (err) => {
                    // copying the source file data to the destination file using writeFile method 
                    
                    if (err) {
                        console.log('Error in writing file!!!',err);
                    } else {
                        console.log('File copied successfully!!!');
                    }
                });
            }
        });
    }
});
