///////////////////////////////////////////////////////////////////////
// Packages
///////////////////////////////////////////////////////////////////////

// npm i express morgan nodemon pg dotenv

const express = require('express');
const morgan = require('morgan');
require('dotenv').config({ path: './.env' });


///////////////////////////////////////////////////////////////////////
// Helpers
///////////////////////////////////////////////////////////////////////

// const { getAllVillains, getVillain } = require('./data/villain-queries');
const footballQueries = require('./queries');
const { getTeam } = footballQueries;

///////////////////////////////////////////////////////////////////////
// Express / Config
///////////////////////////////////////////////////////////////////////

const PORT = process.env.PORT;
const app = express();

///////////////////////////////////////////////////////////////////////
// Middleware
///////////////////////////////////////////////////////////////////////

app.set('view engine', 'ejs');
app.use(morgan('dev'));

///////////////////////////////////////////////////////////////////////
// Listener
///////////////////////////////////////////////////////////////////////

app.listen(PORT, () => {
    console.log(`Express app listening on: http://localhost:${PORT}`);
});

///////////////////////////////////////////////////////////////////////
// Routes
///////////////////////////////////////////////////////////////////////

/*
const team = {
  name: 'All Stars',
  GK: { name: 'BobGK', value: 10},
  RB: { name: 'BobRB', value: 15},
  RCB: { name: 'BobRCB', value: 20},
  LCB: { name: 'BobLCB', value: 22},
  LB: { name: 'BobLB', value: 18},
  // RM: { name: 'BobRM', value: 24},
  CM: { name: 'BobCM', value: 26},
  LM: { name: 'BobLM', value: 30},
  RF: { name: 'BobRF', value: 40},
  CF: { name: 'BobCF', value: 45},
  LF: { name: 'BobLF', value: 50},
};
*/

const posArray = ['GK', 'RB', 'RCB', 'LCB', 'LB', 'RM', 'CM', 'LM', 'RF', 'CF', 'LF'];

app.get('/', (req, res) => {

  const team = getTeam();

  const templateVars = { team, posArray };
  res.render("index", templateVars);
});
