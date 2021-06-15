// stderr is sent to stdout of parent process
// you can set options.stdio if you want it to go elsewhere
const { spawnSync } = require('child_process');
// const command = 'last | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"'

const child = spawnSync('./_l.sh',);

const request = require('request');

if (child.error) console.error('error', child.error);

let res = child.stdout.toString()

let resArr = res.split('\n')

for(let i = 0; i < resArr.length; i++) {
	    getPlaceName(resArr[i])
}

function getPlaceName(ip) {
    request(`https://api.ipdata.co/${ip}?api-key=test`, { json: true }, (err, res, body) => {
        if (err) { return console.log(err); }
        console.log(`IP: ${ip}, ADDRESS: ${body.time_zone.name}`);
    });

}


// console.log('stdout ', res);


if (child.stderr.toString()) console.error('stderr ', child.stderr.toString())