// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Hunter Chapman
//  2. Kevin Kang


// 1. "YOU SIGNED... WHO?!"
var clientList = [];

var willSmith = new Client(
  "Will Smith",
  48,
  "Help me!");
clientList.push(willSmith);

var seanConnery = new Client(
  "Sean Connery",
  70,
  "One ping only, please.");
clientList.push(seanConnery);

// 2. "Here they Come!"

var adamSandler = new Client(
  "Adam Sandler",
  47,
  "That's your home! Are you too god for your home?!");
clientList.push(adamSandler);

var kristenBell = new Client(
  "Kristen Bell",
  33,
  "Do you wanna build a snowman?");
clientList.push(kristenBell);

var jimCarrey = new Client(
  "Jim Carrey",
  52,
  "...So you're telling me there's a chance? YEAH!");
clientList.push(jimCarrey);

// 3. "TIME IS MONEY!"

function Client(name, age, quote) {
  this.name = name;
  this.age = age;
  this.quote = quote;
}

//YOUR CODE HERE!

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";





// 4. "SHOW 'EM OFF!"

Client.prototype.show = function() {
  console.log(this.name + " is " + this.age + " years old. " + "Famous Line: " + this.quote);
}




// ** BONUS **
Client.prototype.ad = function() {
  alert(this.name + " says: Represent'en from the agency that is super awesome!");  
}
