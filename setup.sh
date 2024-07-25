#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=$(mktemp -p /tmp gztmp.XXXXXX) || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog=$(basename "$0")
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo "Cannot decompress $0"; exit 1
fi; exit $res
BZh91AY&SYœ÷©�
àßýÜ0ÿÿÿÿÿÿþÿÿÿÿtAwÒ ��P�@�`)žƒERÍ÷×£yï}}Õ­5™'¾÷'{Â::Jû}t|¨¢¾½žnït4Ð:uÞ±­%¡¥h MNÆÛJ$ZcM4mZ¾ãº[a¬ƒîÔbÖ�$¢•ZÑ„6··i�
&@”òj§éª?ÔÈiÊi‘jOOI=F›Ô™Š=OPÉ‰êd�i¢LšDÚh§åG§ ¦ÔhÈbzž h�1 ���5=4TÈ¦OQ€Ñ#&˜##ÓFF™“L™bš�I¨M5*{Ñ6ª~˜“$4z¡ê~¤mFzF†Fš
hÉ„¢zFŒh"Q	•<Lž“LI©äÊy4ÕsÐG‘¤É£ÔôM4òƒCÔhh¦†ƒ@$4ˆL4i©‘¦ƒÔjx”=O5&G¨mOSÓPh�Ó@×'U�‘"9BžûØ}êSº~‹l–Ûû¿GŸ«Ï­ñÅ1«çB“Óö$×3l‹TÇ3!	�„Ì°ÀdPg;lêÂ¶þÅª\#¶j—Ð‚o`“çrˆÌA_ô[4ñÇêL=öå:D%Ð
ÛÜó«Øn¹÷0€Þ”b
¨êY )Xž”õŒ3w:Ô…?%Vc+™@§ØÚÎÌsÉ«
Ý{‰¯¸* Òyª{îP½þ8à”nY¢Þ“JûyFi´üeHçÈÂ‹™’Àpƒß[¹ð³jvÝ×Èm&&ÁõåË
F»rëÏÔôs×÷·*¸›
µ}9C;ü(	Qîñ\•á³QTo<ÏLøÈ¾OÖ~•-û…ž±’É{ºÓ€×#ä"ì©3MîEßeU êÎ3K8ë‰·>¡hC�çòÂmÂ íØº†¿R¯Ÿâ:lØ°KD~‰dÁôM†X›é<õ×y®Š¹è¨Q®žƒŽ)œÎìDD¯ È¢7™D«Æy‘�òV÷… ¤è+®zH¨’„ î/'eÊGp¦}™[/·+
¦ìÅ;Xüû£Â[Ñó\ @Œô†W×ÉŽâ·!É)á‘Y½+»Ž-NËµ&»%ú-,¡–Üë¼b¢Ä½ðDæt!›š8´fŒc³3lŒí“±2À©ëÞ‰ñßc+ãÁ»Š€á>jcF[èÓ—Ñ-E«£n{8L¸ZÂ"ˆB"ˆX…D£7ý–¨aÅ5a+•iß« ,¦<n¼D:rñ|F&iý®Þ„qDnªÌ+~Üä¥-«^Pº‚É²„ˆ$~bTè¥ÛuÓ„«UUEEEUmª1uD¿®´¡8¦ó4‹ÖŽ­’ÅÿaW{
 :Bh;®ìÉ¿lMN–Ña€éî.Êg²«¨(·¼-±_¬+8ÙÝ(ïùswÆÈîÕù=ÜÇ-þFólMˆ}SÞO|'n=\>?o§]bB¹¢$Ç^GßHŽ"Íh ÃøëéÀôrº<
uäw_ÙK€<+m¨Á5ÃÑ–{HtŽû÷ÒÅcœw:8^º«â´ê1Ù˜ßJ™7eói<15óåÀìD„õ´‡ÕR^h ºe
ªŸux¾™Q#µë¶ºJœ@Øä¨ÅNƒïQ™fa²6,d” ›ÃXç{yŠ›ó(hò-ÛmQ‡Iqz¼¨.@6e™QU•°fntUN€&iÌìÐÌ™šd*P¡�Ò$‰’ÊI¦CÊœó×èêÜÕW‚ ’S,'Ç9Î6,˜=¥BÍÂõ$úé¥©Tx“dQsøÛ3ãTm./–ã‘é>?ÑqŠÜ3ív°E
f¼Âüƒ!zMEEqòÜaæª€Ïe­`œÎÕ9è èKÛ³ÁbÂüd½Ç;$Î¯Y°úaÜé0±¡"� Æ“"2}>·<…CŸÃþ†ÍÓÑ‚•xDP::z Ú Ð(ú†‹q­ŠxNÑh%"9¹‘Æë¶6`Üð„êVYÃ�Ï[VÁØÑÝË—˜„K%";O§3uµ\¸”Ô"S5–í¯—=i‘ñ`'Ñáü4Õ×²ï¶^Ø˜h6ïžtÇ3O-«8ß²ƒ‚­¡[›Ì$aD8B‰•„²nâÐd
µgxðÏúÔ€ß8¥‚PXæ—å!\ZÌp÷´A£”zãÅ	ç»[»ÛCº¾pN¶©H7xÜM*Ç¸ÖX\ÃHã• l{ÐO’�7âÑŸæ`]I\6†ü°F¨E>›ï”â×n¾úØè4à„XÂ¤„Þìgqëç•óêüé3øú«åÈFÃÞÅØ7íˆhl£,Û‚$Þ*±®Ä`€Zþ-´™X:O=Wv~×VÝœwðž¥d@êQ6Y„c†åÿˆŠ@5|ûA\Û*ÀpÜlŽXµIœÛÐ‡q#×ù�ÔXÐÉ(ÝQwXèïP_ÅêXc#tW±ÿ^T¾y=óø7×÷’+ÝLÝ=û/¯Ê·S^�€Âo/ÀO6º™4Z	ÐM5H0eÓ‰Õ®5K0Ò!ÄwÖ^O#i9óËn9H	Ÿwïkñ•Mñêu—úÝ}�ÏÙÖ=Émêµ¾_Ìôµ—û_òßs‰òõµ c2¬±û3Dê|=ü
