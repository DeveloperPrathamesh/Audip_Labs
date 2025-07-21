// Task:-

//  Write a Node.js program that displays two separate messages in the console: 
// ● "Hello, this is my first Node.js program!" 
// ● "I am excited to learn more about Node.js!" 
// Then, modify the program to concatenate these two messages into a single line and display: 
// "Hello, this is my first Node.js program! I am excited to learn more about Node.js!" 



const message1 = "Hello, this is my first Node.js program!";
const message2 = "I am excited to learn more about Node.js!";
// assigned variables to the two messages



console.log(message1);
console.log(message2);
// displayed the messages on the console separately



const mergedMsg = `${message1 }` + `${message2}`;
console.log(mergedMsg);
// concatinated the messages into a single message and displayed on the console