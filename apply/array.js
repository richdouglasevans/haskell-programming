const { lift2, lift3 } = require('./liftn');

const plusN = n => x => x + n

Array.prototype.ap = function (fs) {
    return [].concat(...fs.map(
        f => this.map(f)
    ));
};

console.log([1, 2, 3].ap([plusN(+1)]));

console.log(lift2(x => y => x + y)([1, 2])([2, 3]));

console.log(lift3(x => y => z => x + y + z)([1])([2])([4]));
