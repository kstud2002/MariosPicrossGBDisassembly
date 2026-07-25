IMAGE_DEPS = gfx/Picross15x15GameBoardTileData.2bpp gfx/CellEffectTileDataSet00.2bpp gfx/PuzzleTimerDigitsTileData.2bpp gfx/ClueDigitsWhiteBGTileData.2bpp gfx/ClueDigitsGreyBGTileData.2bpp gfx/Picross10x10And15x15GameOverMessageTileData.2bpp gfx/CellEffectTileDataSet01.2bpp gfx/CellEffectTileDataSet02.2bpp gfx/CellEffectTileDataSet03.2bpp gfx/CellEffectTileDataSet04.2bpp gfx/CellEffectTileDataSet05.2bpp gfx/CellEffectTileDataSet06.2bpp gfx/CellEffectTileDataSet07.2bpp gfx/CellEffectTileDataSet08.2bpp gfx/CellEffectTileDataSet09.2bpp gfx/CellEffectTileDataSet0a.2bpp gfx/CellEffectTileDataSet0b.2bpp gfx/CellEffectTileDataSet0c.2bpp gfx/CellEffectTileDataSet0d.2bpp gfx/CellEffectTileDataSet0e.2bpp gfx/CellEffectTileDataSet0f.2bpp gfx/CellEffectTileDataSet10.2bpp gfx/CellEffectTileDataSet11.2bpp gfx/CellEffectTileDataSet12.2bpp gfx/CellEffectTileDataSet13.2bpp gfx/CellEffectTileDataSet14.2bpp gfx/CellEffectTileDataSet15.2bpp gfx/CellEffectTileDataSet16.2bpp gfx/CellEffectTileDataSet17.2bpp gfx/CellEffectTileDataSet18.2bpp gfx/CellEffectTileDataSet19.2bpp gfx/CellEffectTileDataSet1a.2bpp gfx/Picross15x15MarioAnimationRow1.2bpp gfx/Picross15x15MarioAnimationRow2.2bpp gfx/Picross15x15MarioAnimationRow3.2bpp gfx/Picross15x15MarioAnimationRow4.2bpp gfx/Picross15x15MarioClearTileData.2bpp gfx/Picross15x15MarioGameOverTileData.2bpp gfx/HintMessageTileData.2bpp gfx/PauseMenuTileData.2bpp gfx/Picross5x5GameBoardTileData.2bpp gfx/Picross5x5GameOverMessageTileData.2bpp gfx/SmallMarioTileData.2bpp gfx/Picross10x10GameBoardTileData.2bpp gfx/Picross10x10MarioAnimationRow1.2bpp gfx/Picross10x10MarioAnimationRow2.2bpp gfx/Picross10x10MarioAnimationRow3.2bpp gfx/Picross10x10MarioAnimationRow4.2bpp gfx/Picross10x10MarioClearTileData.2bpp gfx/Picross10x10MarioGameOverTileData.2bpp gfx/TitleScreenTileData.2bpp gfx/TitleScreenBlinkAnimationTileData.2bpp gfx/CourseSelectScreenTileData.2bpp gfx/DataSelectScreenTileData.2bpp gfx/TimeTrialLevelSelectTileData.2bpp gfx/ContinueSavedGameScreenTileData.2bpp gfx/GameSelectScreenTileData.2bpp gfx/EasyPicrossLevelSelectTileData.2bpp gfx/KinokoCourseLevelSelectTileData.2bpp gfx/KinokoCourseSignTileData.2bpp gfx/StarCourseLevelSelectTileData.2bpp gfx/StarCourseSignTileData.2bpp gfx/SelectAProblemBottomTileData.2bpp gfx/UNMAPPEDTileData.2bpp gfx/PromptFontTileData.2bpp gfx/MessageFontTileData.2bpp

all: game.gb

%.2bpp: %.png
	rgbgfx --colors embedded -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

game.o: game.asm bank_*.asm $(IMAGE_DEPS)
	rgbasm -o game.o game.asm

game.gb: game.o
	rgblink -n game.sym -m game.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f game.o game.gb game.sym game.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +