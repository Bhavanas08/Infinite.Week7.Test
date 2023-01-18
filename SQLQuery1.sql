select * from Position

alter proc InsertPositionDetails(@Positioncode char(4),
                                  @Description varchar(35),
                                  @year smallint,
                                  @budgetedstrength int,
                                  @currentstrength int)

as
begin
    Insert  Position(cPositioncode, vDescription, siYear, ibudgetedstrength,icurrentstrength) values (@Positioncode, @Description, @year, @budgetedstrength,@currentstrength)
end

exec InsertPositionDetails '1234','abc','2024',32,24