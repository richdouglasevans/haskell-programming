const daggy = require('daggy');
const { lift2 } = require('./liftn');
const { plusN } = require('./mathy');

const Identity = daggy.tagged('Identity', ['x']);

function pure(x) {
    return new Identity(x);
}

Identity.prototype.map = function(f) {
    return pure(f(this.x));
}

Identity.prototype.ap = function (f) {
    return pure(f.x(this.x));
};

console.log(pure(2).ap(pure(plusN(1))));

console.log(lift2(plusN)(pure(3))(pure(4)));
