% musican intrument
% musican genre

play('지미 핸드릭스', 'guitar').
play('폴 매카트니', 'drum').

genre('지미 핸드릭스', 'rock').
genre('폴 매카트니', 'pop').

instrument(Instrument, Genre) :- play(Musician, Instrument), genre(Musician, Genre).
