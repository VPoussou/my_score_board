BEGIN
  DECLARE `min_players` INT;
  DECLARE `max_players` INT;
  SELECT jeu.min_joueurs, jeu.max_joueurs INTO `min_players`, `max_players`
  FROM jeu
  WHERE jeu.id = NEW.id_jeu;
  IF NEW.nb_joueurs < `min_players` OR NEW.nb_joueurs > `max_players` THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Number of players is not within the allowed range for this game.';
  END IF;
END;