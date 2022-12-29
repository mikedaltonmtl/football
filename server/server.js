///////////////////////////////////////////////////////////////////////
// Packages
///////////////////////////////////////////////////////////////////////

// npm i express morgan nodemon pg dotenv

const express = require('express');
const morgan = require('morgan');
require('dotenv').config({ path: './.env' });
const path = require('path');


///////////////////////////////////////////////////////////////////////
// Helpers
///////////////////////////////////////////////////////////////////////

// const { getAllVillains, getVillain } = require('./data/villain-queries');
const footballQueries = require('./queries');
const { getTeam, searchPlayers } = footballQueries;

///////////////////////////////////////////////////////////////////////
// Express / Config
///////////////////////////////////////////////////////////////////////

const PORT = process.env.PORT;
const app = express();

///////////////////////////////////////////////////////////////////////
// Middleware
///////////////////////////////////////////////////////////////////////

app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname, '../public')));
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

app.get('/', (req, res) => {
  const posArray = ['GK', 'RB', 'RCB', 'LCB', 'LB', 'RM', 'CM', 'LM', 'RF', 'CF', 'LF'];
  const team = {};
  const searchBy = 'F';

  getTeam()
    .then((players) => {
      // console.log('players', players);
      for (const player of players) {
        team[player.selected_position] = {
          initial: player.initial,
          name: player.name, 
          club: player.club,
          value: player.value,
          id: player.id
        };
      }
      // console.log('team', team);
    })
    .then(
      searchPlayers(searchBy)
      .then((reserves) => {
        console.log('reserves', reserves);

        const templateVars = { team, posArray, reserves, searchBy };
        res.render("index", templateVars);
      }))
    .catch((err) => {
      console.log(err.message);
    });
});
