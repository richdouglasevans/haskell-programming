import * as R from 'ramda';
import * as expect from 'must';
import { identity } from 'fp-ts/lib/Identity';
import { ask, reader } from 'fp-ts/lib/Reader';

type LogLevel = 'info' | 'debug';

interface Log {
    (message: string, level?: LogLevel): void;
}

interface RuntimeState {
    logLevel: LogLevel
}

describe('Dependency Injection', function () {

    it('using the Reader monad to look-up non-transactional state.', function () {
    });

    it('using partial application.', function () {

        const log: Log = console.log;

        const answer = identity.of('rich.douglas')
            .map((name: string) => name.toUpperCase())
            .map(R.tap(log))
            .value;

        expect(answer).to.equal('RICH.DOUGLAS');
    });

    it('using the Reader monad to look-up transactional state.', function () {

        const log: Log = console.log;

        const pipeline = reader.of<RuntimeState, string>('rich.douglas')
            .map((name: string) => name.toUpperCase())
            .chain((name: string) =>
                ask<RuntimeState>()
                    .map((rs: RuntimeState) => {
                        log(name, rs.logLevel);
                        return name;
                    })
            );

        const answer = pipeline.run({
            logLevel: 'debug'
        });

        expect(answer).to.equal('RICH.DOUGLAS');
    });
});
