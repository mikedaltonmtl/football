const db = require('./db/index');


const getTeam = function() {
  const queryString = `SELECT * FROM players WHERE selected_position IS NOT NULL;`;

  return db
    .query(queryString)
    .then((result) => {
      if (result.rows) {
        return result.rows;
      } else {
        return null;
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
};

const searchPlayers = function(position) {

  const queryString = `
    SELECT players.* FROM players
    JOIN positions ON players.id = positions.player_id
    WHERE positions.position = '${position}'
    ORDER BY players.value DESC;`

    // console.log('queryString', queryString);

  return db
    .query(queryString)
    .then((result) => {
      // console.log('result', result.rows);
      if (result.rows) {
        return result.rows;
      } else {
        return null;
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
}

module.exports = {
  getTeam,
  searchPlayers
};

  /*
  const queryString = `
    SELECT *, reservations.*, AVG(property_reviews.rating)
    FROM reservations
      JOIN properties ON reservations.property_id = properties.id
      JOIN property_reviews ON properties.id = property_reviews.property_id
    WHERE reservations.guest_id = $1
    GROUP BY properties.id, reservations.id
    ORDER BY reservations.start_date
    LIMIT $2;
  `;
  */
  // const data = [guest_id, limit];