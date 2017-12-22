const fs = require("fs");

process.stdin.on("readable", () => {
    const file = process.stdin.read();

    if (!file) {
        return;
    }

    const numbers = file
        .toString()
        .split("\n")
        .join(" ")
        .split(/\s+/)
        .map(x => parseInt(x));

    const buf = Buffer.allocUnsafe(numbers.length * 2);

    numbers.forEach((x, i) => {
        if (x < 0) {
            x = 0;
        }

        buf.writeUInt16BE(x, i * 2);
    });

    process.stdout.write(buf);
});
