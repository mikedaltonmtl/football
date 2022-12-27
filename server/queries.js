const db = require('./db/index');


const getTeam = function() {
  const posArray = ['GK', 'RB', 'RCB', 'LCB', 'LB', 'RM', 'CM', 'LM', 'RF', 'CF', 'LF'];
  const queryString = `SELECT * from teams;`;

  console.log('queryString:', queryString);

  return db
    // .query(queryString, data)
    .query(queryString)
    .then((result) => {
      if (result.rows) {
        console.log('result:', result.rows[0]);
        return result.rows[0];
      } else {
        return null;
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
};

module.exports = {
  getTeam
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