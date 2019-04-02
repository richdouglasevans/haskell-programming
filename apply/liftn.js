const lift2 = f => a => b => b.ap(a.map(f));
const lift3 = f => a => b => c => c.ap(b.ap(a.map(f)));

module.exports = { lift2, lift3 };
