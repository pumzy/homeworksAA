const madLib = (verb, adj, noun) => {
  return `we shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`
}

function isSubstring(searchString, subString) {
  return searchString.search(subString) !== -1; }

function fizzBuzz (array) {
  const arr2 = [];
  array.forEach( el => {
    if ((el%3 === 0) ^ (el%5 === 0)) { arr2.push(el);}
  }});

  return arr2;
}

const isPrime = number => {
  if(number < 2) {return false; }
  for (let i=2; i<number; i++) {
    if (number%i==0) {return false;}
  }

  return true;
}

const sumOfNPrimes = number => {
  let res = 0;
  let i = 2;
  let pc = 0
  while(pc<number) { if
    (isPrime(i)) {
      res += i;
      pc += 1;
    }
    i += 1;
  }
  return res;
}

const titleize = (array, cb) => {
  let newarr = array.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  cb(newarr);
}

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}


Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the Elephant goes  'phrRRRRRRRRRRR!!!!!!!'`);}
}
