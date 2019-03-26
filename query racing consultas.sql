select P.IdPlayer, P.Player,
       P.OnlinePassword, P.Password,
	   P.DateOfBirth,
	   P.Email,
	   P.Name,
	   P.LastName
  from PLAYER P
  WHERE P.DateOfBirth >= CONVERT(Date,'01/02/2018')
  AND
        P.Player LIKE'AP%'

  SELECT * FROM BOOKPREFIX

  SELECT 
         R.TrackID, T.TrackName,
		 T.TrackCode,
         R.RaceID, R.OffTime,
		 R.RaceDate,
		 R.RaceDescription,
		 R.RaceShortDesc,
		 R.RaceStatus,
         R.MTP
    FROM Race R
	INNER JOIN Track T ON T.TrackID = R.TrackID
	WHERE R.RaceDate = CONVERT(Datetime,'01/03/2019')
	--AND T.TrackName LIKE '%FAIR%'
	ORDER BY R.RaceDate ASC
	