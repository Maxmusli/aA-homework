function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping1();

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping2();

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping3();

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

function mabLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`;
}

// console.log(mabLib("haha", 'hoho', 'hehe'));

function isSubstring(string, substr) {
  return string.includes(substr);
}

// console.log(isSubstring("hahahaah", "haha"));

function fizzbuzz(arr) {
  const results = [];

  arr.forEach(ele => {
    if ((ele % 3 === 0) ^ (ele % 5 === 0)) {
      results.push(ele);
    }
  });

  return results;
}

function isPrime(num) {
  if (num < 2) { return false; }

  for (let i = 2; i < num; i++) {
    if (num % i === 0) { return false;}
  }

  return true;
}

function sumOfNPrime(n) {
  let sum = 0;
  let count = 0;
  let i = 2;

  while (count < n) {
    if (isPrime(i)) {
      sum += i;
      count += 1;
    }
    i++;
  }

  return sum;
}

console.log(sumOfNPrime(5));