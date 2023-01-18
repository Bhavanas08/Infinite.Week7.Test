select * from Position

create proc InsertPositionDetails(@Positioncode varchar(50),
                                  @Description varchar(500),
                                  @year int,
                                  @budgetedstrength int,
                                  @currentstrength int)

as
begin
    Insert into Positontable (cPositioncode, vDescription, siYear, ibudgetedstrength,icurrentstrength) values (@Positioncode, @Description, @year, @budgetedstrength,@currentstrength)
end