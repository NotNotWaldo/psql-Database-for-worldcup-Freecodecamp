#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  
  #echo $YEAR $ROUND $WINNER $OPPPENT $WINNER_GOALS $OPPONENT_GOALS
  
  WIN_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  if [[ $WINNER != "winner" && $WINNER != "opponent" ]]
  then 
    if [[ -z $WIN_TEAM_ID ]]
    then
      echo -e "\nthis ran\n"
      WIN_INS_RES=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $WIN_INS_RES == "INSERT 0 1" ]]
      then
        echo "Inserted team $WINNER"
        WIN_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      fi
    fi
  fi

  OPP_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  if [[ $OPPONENT != "winner" && $OPPONENT != "opponent" ]]
  then 
    if [[ -z $OPP_TEAM_ID ]]
    then
    echo -e "\nthis ran 1\n"
      OPP_INS_RES=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $OPP_INS_RES == "INSERT 0 1" ]]
      then
        echo "Inserted team $OPPONENT"
        OPP_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      fi
    fi
  fi
  

  RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_TEAM_ID, $OPP_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")

done

