const daggy = require('daggy');

const Predicate = daggy.tagged('Predicate', ['f']);

Predicate.prototype.contramap = function(g) {
    return Predicate(x => this.f(g(x)));
};

const isEven = Predicate(x => (x % 2) === 0);
const isEvenLengthyThing = isEven.contramap(x => x.length);

console.log(isEvenLengthyThing.f('oh'));    // true
console.log(isEvenLengthyThing.f([1,2,3])); // false
