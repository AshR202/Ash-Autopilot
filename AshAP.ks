//Ash Autopilot V1 menu.
//╔  ═  ╗
//║  ╠  ╣
//╚  ═  ╝
//╔═══════════════════╗
//╠═══════════════════╣
//║     Selected:     ║
//║                   ║
//║                   ║
//╚═══════════════════╝
//╔═══════════════════╗
//║       (0,1)       ║
//╠═══════════════════╣
//║       (0,3)       ║
//║       (0,4)       ║
//║       (0,5)       ║
//║       (0,6)       ║
//║       (0,7)       ║
//║       (0,8)       ║
//║       (0,9)       ║
//║       (0,10)      ║
//║       (0,11)      ║
//║       (0,12)      ║
//║       (0,13)      ║
//║       (0,14)      ║
//║       (0,15)      ║
//║       (0,16)      ║
//║       (0,17)      ║
//║       (0,18)      ║
//║       (0,19)      ║
//║       (0,20)      ║
//║       (0,21)      ║
//╠═══════════════════╣
//║       (0,23)      ║
//╠═══════════════════╣
//║      Ash  AP      ║
//║   VERSION 1.A.1   ║
//╚═══════════════════╝
//
//runpath("0:AshAPV1A/AshAPV1A").


runpath("0:/AshAPV1A/Libraries/lib_navigation").
runpath("0:/AshAPV1A/Libraries/lib_num_to_formatted_str").
runpath("0:/AshAPV1A/Libraries/Ash_UI_Lib").
runPath("0:/AshAPV1A/Libraries/staging").
runPath("0:/AshAPV1A/Libraries/Manuver_Lib").
cd("0:/AshAPV1A").
clearscreen.
RoseUI().
print "║   Loading .       ║" at (0,1).

wait .5.
print "
║   Loading . .     ║" at (0,1).
wait .5.
print "
║   Loading . . .   ║" at (0,1).
wait .5.
print "
║ LOADING  COMPLETE ║" at (0,1).
wait .5.

ProgramMenu().