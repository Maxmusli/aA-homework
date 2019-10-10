function titleize(arr, callback) {
  let titleized = arr.map(ele => `Mx. ${ele} Jingleheimer Schmidt`)
  callback(titleized)
}

function printCallback(arr) {
  arr.forEach(ele => console.log(ele))
}

// titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`)
}

Elephant.prototype.grow = () => {
  this.height += 12;
};

Elephant.prototype.addTrick = (trick) => {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  randomIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(this.name + ` is ${this.tricks[randomIndex]}!`);
};

let a = new Elephant("hah", 12, ["eat", "jump"]);

a.trumpet()

a.play();
