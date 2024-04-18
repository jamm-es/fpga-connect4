SPRITES = sprite_modules/bg_tile.v sprite_modules/logo.v sprite_modules/red_piece.v sprite_modules/yellow_piece.v sprite_modules/red_indicator.v sprite_modules/yellow_indicator.v sprite_modules/board.v sprite_modules/red_wins.v sprite_modules/yellow_wins.v sprite_modules/tie_game.v sprite_modules/reds_turn.v sprite_modules/yellows_turn.v sprite_modules/red_win_highlight.v sprite_modules/yellow_win_highlight.v sprite_modules/corner_border_check.v


.DEFAULT_GOAL := explain

explain:
	@echo "This makefile generates all the required sprite modules (in /sprite_modules) based on input sprite files (in /sprites)"
	@echo "Run make sprites to generate the modules."


sprites: $(SPRITES)


sprite_modules/bg_tile.v: sprites/bg_tile.png palette.txt
	python gen_sprite.py bg_tile $^ --x-tile 20 --y-tile 15
	mv bg_tile.v $@

sprite_modules/logo.v: sprites/logo.png palette.txt
	python gen_sprite.py logo $^ --x-offset 25 --y-offset 3
	mv logo.v $@

sprite_modules/red_piece.v: sprites/red_piece.png palette.txt
	python gen_sprite.py red_piece $^ --y-offset -12
	mv red_piece.v $@

sprite_modules/yellow_piece.v: sprites/yellow_piece.png palette.txt
	python gen_sprite.py yellow_piece $^ --y-offset -12
	mv yellow_piece.v $@

sprite_modules/red_indicator.v: sprites/red_indicator.png palette.txt
	python gen_sprite.py red_indicator $^ --y-offset 11
	mv red_indicator.v $@

sprite_modules/yellow_indicator.v: sprites/yellow_indicator.png palette.txt
	python gen_sprite.py yellow_indicator $^ --y-offset 11
	mv yellow_indicator.v $@

sprite_modules/board.v: sprites/board.png palette.txt
	python gen_sprite.py board $^ --x-offset 14 --y-offset 21
	mv board.v $@

sprite_modules/red_wins.v: sprites/red_wins.png palette.txt
	python gen_sprite.py red_wins $^ --x-offset 48 --y-offset 6
	mv red_wins.v $@

sprite_modules/yellow_wins.v: sprites/yellow_wins.png palette.txt
	python gen_sprite.py yellow_wins $^ --x-offset 37 --y-offset 6
	mv yellow_wins.v $@

sprite_modules/tie_game.v: sprites/tie_game.png palette.txt
	python gen_sprite.py tie_game $^ --x-offset 53 --y-offset 6
	mv tie_game.v $@

sprite_modules/reds_turn.v: sprites/reds_turn.png palette.txt
	python gen_sprite.py reds_turn $^ --x-offset 3 --y-offset 3
	mv reds_turn.v $@

sprite_modules/yellows_turn.v: sprites/yellows_turn.png palette.txt
	python gen_sprite.py yellows_turn $^ --x-offset 3 --y-offset 3
	mv yellows_turn.v $@

sprite_modules/red_win_highlight.v: sprites/red_win_highlight.png palette.txt
	python gen_sprite.py red_win_highlight $^
	mv red_win_highlight.v $@

sprite_modules/yellow_win_highlight.v: sprites/yellow_win_highlight.png palette.txt
	python gen_sprite.py yellow_win_highlight $^
	mv yellow_win_highlight.v $@

sprite_modules/corner_border_check.v: sprites/corner_border_check.png palette.txt
	python gen_sprite.py corner_border_check $^
	mv corner_border_check.v $@



clean:
	rm -f $(SPRITES)