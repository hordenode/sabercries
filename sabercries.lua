local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\79\156","\81\97\178\212\152\176\79\122"),function(v42) if (v9(v42,5 -3 )==81) then local v104=0;while true do if (v104==0) then v30=v8(v11(v42,1,1));return "";end end else local v105=v10(v8(v42,16));if v30 then local v113=0;local v114;while true do if (v113==0) then v114=v13(v105,v30);v30=nil;v113=1;end if (1==v113) then return v114;end end else return v105;end end end);local function v31(v43,v44,v45) if v45 then local v106=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v106-(v106%(2 -1)) ;else local v107=0;local v108;while true do if (v107==0) then v108=2^(v44-1) ;return (((v43%(v108 + v108))>=v108) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==1) then return v47;end if (0==v46) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end if (1==v48) then return (v50 * 256) + v49 ;end end end local function v34() local v51=0;local v52;local v53;local v54;local v55;while true do if (v51==1) then return (v55 * 16777216) + (v54 * (168813 -103277)) + (v53 * 256) + v52 ;end if (0==v51) then v52,v53,v54,v55=v9(v27,v29,v29 + (5 -2) );v29=v29 + 4 ;v51=1;end end end local function v35() local v56=0;local v57;local v58;local v59;local v60;local v61;local v62;while true do if (v56==3) then if (v61==0) then if (v60==0) then return v62 * 0 ;else local v124=0;while true do if (v124==0) then v61=1;v59=0;break;end end end elseif (v61==2047) then return ((v60==0) and (v62 * (1/0))) or (v62 * NaN) ;end return v16(v62,v61-(1950 -(214 + 713)) ) * (v59 + (v60/(2^52))) ;end if (1==v56) then v59=1;v60=(v31(v58,1,20) * (2^(651 -(555 + 64)))) + v57 ;v56=2;end if (v56==0) then v57=v34();v58=v34();v56=1;end if (v56==2) then v61=v31(v58,21,31);v62=((v31(v58,32)==(932 -(857 + 74))) and  -1) or (569 -(367 + 201)) ;v56=3;end end end local function v36(v63) local v64;if  not v63 then local v109=0;while true do if (0==v109) then v63=v34();if (v63==0) then return "";end break;end end end v64=v11(v27,v29,(v29 + v63) -(1 + 0) );v29=v29 + v63 ;local v65={};for v79=1, #v64 do v65[v79]=v10(v9(v11(v64,v79,v79)));end return v14(v65);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66={};local v67={};local v68={};local v69={v66,v67,nil,v68};local v70=v34();local v71={};for v81=1,v70 do local v82=0;local v83;local v84;while true do if (v82==0) then v83=v32();v84=nil;v82=1;end if (v82==1) then if (v83==1) then v84=v32()~=0 ;elseif (v83==2) then v84=v35();elseif (v83==3) then v84=v36();end v71[v81]=v84;break;end end end v69[3]=v32();for v85=1,v34() do local v86=0;local v87;while true do if (v86==0) then v87=v32();if (v31(v87,1,1)==0) then local v120=v31(v87,2,3);local v121=v31(v87,4,6);local v122={v33(),v33(),nil,nil};if (v120==0) then v122[3]=v33();v122[4]=v33();elseif (v120==1) then v122[3]=v34();elseif (v120==2) then v122[3]=v34() -(2^16) ;elseif (v120==3) then local v194=0;while true do if (v194==0) then v122[3]=v34() -(2^16) ;v122[4]=v33();break;end end end if (v31(v121,1,1)==1) then v122[2]=v71[v122[1639 -(1523 + 114) ]];end if (v31(v121,2,2)==1) then v122[3]=v71[v122[3]];end if (v31(v121,3,3)==1) then v122[4]=v71[v122[4]];end v66[v85]=v122;end break;end end end for v88=1,v34() do v67[v88-1 ]=v39();end return v69;end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[2];local v78=v73[3];return function(...) local v90=v76;local v91=v77;local v92=v78;local v93=v38;local v94=1;local v95= -(1 + 0);local v96={};local v97={...};local v98=v20("#",...) -1 ;local v99={};local v100={};for v110=0,v98 do if (v110>=v92) then v96[v110-v92 ]=v97[v110 + 1 ];else v100[v110]=v97[v110 + 1 ];end end local v101=(v98-v92) + 1 ;local v102;local v103;while true do v102=v90[v94];v103=v102[1];if (v103<=24) then if (v103<=11) then if (v103<=5) then if (v103<=2) then if (v103<=0) then local v135;local v136,v137;local v138;v100[v102[2]]=v100[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2 -0 ]]=v100[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]] + v102[4] ;v94=v94 + (1066 -(68 + 997)) ;v102=v90[v94];v138=v102[2];v136,v137=v93(v100[v138](v21(v100,v138 + 1 ,v102[3])));v95=(v137 + v138) -1 ;v135=1270 -(226 + 1044) ;for v181=v138,v95 do local v182=0;while true do if (v182==0) then v135=v135 + 1 ;v100[v181]=v136[v135];break;end end end v94=v94 + 1 ;v102=v90[v94];v138=v102[2];v100[v138]=v100[v138](v21(v100,v138 + 1 ,v95));v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]];v94=v94 + (4 -3) ;v102=v90[v94];v100[v102[2]]= #v100[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[119 -(32 + 85) ]]=v100[v102[3]]%v100[v102[4]] ;v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3 + 0 ] + v100[v102[4]] ;v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]= #v100[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[1 + 1 ]]=v100[v102[3]]%v100[v102[4]] ;v94=v94 + (958 -(892 + 65)) ;v102=v90[v94];v100[v102[4 -2 ]]=v102[5 -2 ] + v100[v102[4]] ;v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]] + v102[4] ;v94=v94 + 1 ;v102=v90[v94];v138=v102[2];v136,v137=v93(v100[v138](v21(v100,v138 + 1 ,v102[3])));v95=(v137 + v138) -1 ;v135=0;for v183=v138,v95 do v135=v135 + 1 ;v100[v183]=v136[v135];end v94=v94 + 1 ;v102=v90[v94];v138=v102[3 -1 ];v136,v137=v93(v100[v138](v21(v100,v138 + 1 ,v95)));v95=(v137 + v138) -1 ;v135=0;for v186=v138,v95 do v135=v135 + 1 ;v100[v186]=v136[v135];end v94=v94 + 1 ;v102=v90[v94];v138=v102[2];v100[v138]=v100[v138](v21(v100,v138 + (351 -(87 + 263)) ,v95));v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]]%v102[4] ;v94=v94 + 1 ;v102=v90[v94];v138=v102[2];v136,v137=v93(v100[v138](v100[v138 + 1 ]));v95=(v137 + v138) -1 ;v135=0;for v189=v138,v95 do v135=v135 + 1 ;v100[v189]=v136[v135];end v94=v94 + 1 ;v102=v90[v94];v138=v102[2];v100[v138](v21(v100,v138 + 1 ,v95));elseif (v103==1) then v100[v102[2]]=v102[183 -(67 + 113) ];else local v197=v102[2];local v198={};for v293=1, #v99 do local v294=v99[v293];for v388=0 + 0 , #v294 do local v389=0;local v390;local v391;local v392;while true do if (1==v389) then v392=v390[2];if ((v391==v100) and (v392>=v197)) then v198[v392]=v391[v392];v390[2 -1 ]=v198;end break;end if (v389==0) then v390=v294[v388];v391=v390[1];v389=1;end end end end end elseif (v103<=3) then local v150=0;local v151;local v152;local v153;local v154;while true do if (v150==6) then v94=v102[3];break;end if (2==v150) then v100[v102[2]]=v74[v102[3]];v94=v94 + (953 -(802 + 150)) ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v150=3;end if (v150==4) then v152,v153=v93(v100[v154](v21(v100,v154 + 1 ,v102[3])));v95=(v153 + v154) -1 ;v151=0;for v393=v154,v95 do local v394=0;while true do if (v394==0) then v151=v151 + 1 ;v100[v393]=v152[v151];break;end end end v94=v94 + 1 ;v150=5;end if (v150==3) then v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v154=v102[2];v150=4;end if (v150==1) then v94=v94 + 1 + 0 ;v102=v90[v94];v100[v102[7 -5 ]]=v75[v102[3]];v94=v94 + 1 ;v102=v90[v94];v150=2;end if (v150==5) then v102=v90[v94];v154=v102[2];v100[v154](v21(v100,v154 + 1 ,v95));v94=v94 + (2 -1) ;v102=v90[v94];v150=6;end if (v150==0) then v151=nil;v152,v153=nil;v154=nil;v154=v102[2];v100[v154](v100[v154 + 1 ]);v150=1;end end elseif (v103==4) then local v199=0;local v200;local v201;local v202;local v203;local v204;while true do if (v199==9) then v100[v204]=v203[v102[4]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v199=10;end if (v199==11) then for v576=v204,v95 do local v577=0;while true do if (v577==0) then v200=v200 + 1 ;v100[v576]=v201[v200];break;end end end v94=v94 + 1 ;v102=v90[v94];v204=v102[2];v100[v204]=v100[v204](v21(v100,v204 + 1 ,v95));v94=v94 + 1 ;v102=v90[v94];if v100[v102[2]] then v94=v94 + 1 ;else v94=v102[3];end break;end if (4==v199) then v204=v102[2];v201,v202=v93(v100[v204](v21(v100,v204 + 1 ,v102[3])));v95=(v202 + v204) -1 ;v200=0;for v578=v204,v95 do local v579=0;while true do if (v579==0) then v200=v200 + 1 ;v100[v578]=v201[v200];break;end end end v94=v94 + 1 ;v102=v90[v94];v204=v102[2];v199=5;end if (v199==6) then v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v199=7;end if (v199==5) then v100[v204]=v100[v204](v21(v100,v204 + 1 ,v95));v94=v94 + 1 + 0 ;v102=v90[v94];v204=v102[999 -(915 + 82) ];v203=v100[v102[3]];v100[v204 + 1 ]=v203;v100[v204]=v203[v102[4]];v94=v94 + (2 -1) ;v199=6;end if (v199==0) then v200=nil;v201,v202=nil;v203=nil;v204=nil;v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v199=1;end if (3==v199) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v199=4;end if (v199==7) then v94=v94 + 1 ;v102=v90[v94];v204=v102[2];v201,v202=v93(v100[v204](v21(v100,v204 + 1 ,v102[3])));v95=(v202 + v204) -1 ;v200=0;for v580=v204,v95 do local v581=0;while true do if (0==v581) then v200=v200 + 1 ;v100[v580]=v201[v200];break;end end end v94=v94 + 1 ;v199=8;end if (v199==10) then v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v204=v102[2];v201,v202=v93(v100[v204](v21(v100,v204 + 1 ,v102[3])));v95=(v202 + v204) -1 ;v200=0;v199=11;end if (v199==2) then v102=v90[v94];v204=v102[2];v203=v100[v102[3]];v100[v204 + 1 ]=v203;v100[v204]=v203[v102[4]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[5 -2 ]];v199=3;end if (v199==1) then v94=v94 + 1 ;v102=v90[v94];v204=v102[2];v100[v204]=v100[v204](v21(v100,v204 + 1 ,v102[3]));v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v75[v102[3]];v94=v94 + 1 ;v199=2;end if (8==v199) then v102=v90[v94];v204=v102[2];v100[v204]=v100[v204](v21(v100,v204 + 1 ,v95));v94=v94 + 1 ;v102=v90[v94];v204=v102[2];v203=v100[v102[3]];v100[v204 + 1 ]=v203;v199=9;end end else for v310=v102[2],v102[3] do v100[v310]=nil;end end elseif (v103<=8) then if (v103<=(4 + 2)) then local v155=0;local v156;local v157;local v158;while true do if (v155==1) then v158={};v157=v18({},{[v7("\34\196\247\198\128\196\255","\135\125\155\158\168\228\161")]=function(v395,v396) local v397=v158[v396];return v397[1][v397[2]];end,[v7("\0\14\18\82\174\54\63\24\82\161","\217\95\81\124\55")]=function(v398,v399,v400) local v401=0;local v402;while true do if (v401==0) then v402=v158[v399];v402[1][v402[2]]=v400;break;end end end});v155=2;end if (2==v155) then for v403=1188 -(1069 + 118) ,v102[4] do local v404=0;local v405;while true do if (v404==1) then if (v405[1]==47) then v158[v403-(2 -1) ]={v100,v405[3]};else v158[v403-(1 -0) ]={v74,v405[3]};end v99[ #v99 + 1 + 0 ]=v158;break;end if (v404==0) then v94=v94 + 1 ;v405=v90[v94];v404=1;end end end v100[v102[2]]=v40(v156,v157,v75);break;end if (0==v155) then v156=v91[v102[3 -0 ]];v157=nil;v155=1;end end elseif (v103>7) then local v205=0;local v206;local v207;local v208;while true do if (v205==2) then if (v207>0) then if (v208<=v100[v206 + 1 ]) then local v628=0;while true do if (v628==0) then v94=v102[3];v100[v206 + 3 ]=v208;break;end end end elseif (v208>=v100[v206 + 1 ]) then v94=v102[3];v100[v206 + 3 ]=v208;end break;end if (v205==0) then v206=v102[2];v207=v100[v206 + 2 ];v205=1;end if (v205==1) then v208=v100[v206] + v207 ;v100[v206]=v208;v205=2;end end elseif (v100[v102[2]]==v102[4]) then v94=v94 + (1 -0) ;else v94=v102[3];end elseif (v103<=9) then v100[v102[2]]=v102[3] + v100[v102[4]] ;elseif (v103==10) then if v100[v102[2]] then v94=v94 + 1 ;else v94=v102[3];end else v100[v102[2]]=v100[v102[3]]%v102[4] ;end elseif (v103<=17) then if (v103<=14) then if (v103<=12) then v100[v102[2]]=v100[v102[3]]%v100[v102[4]] ;elseif (v103>13) then if  not v100[v102[2]] then v94=v94 + 1 ;else v94=v102[3];end else local v210=v102[2];local v211=v100[v102[3]];v100[v210 + 1 ]=v211;v100[v210]=v211[v102[4]];end elseif (v103<=15) then v100[v102[2]]=v74[v102[3]];elseif (v103==16) then local v215=v102[3];local v216=v100[v215];for v314=v215 + 1 ,v102[4] do v216=v216   .. v100[v314] ;end v100[v102[2]]=v216;else local v218=v102[2];v100[v218]=v100[v218](v21(v100,v218 + 1 ,v95));end elseif (v103<=(20 + 0)) then if (v103<=18) then local v163=v102[2];local v164,v165=v93(v100[v163](v100[v163 + 1 ]));v95=(v165 + v163) -1 ;local v166=0;for v192=v163,v95 do local v193=0;while true do if (v193==0) then v166=v166 + (792 -(368 + 423)) ;v100[v192]=v164[v166];break;end end end elseif (v103>19) then local v220=0;local v221;while true do if (v220==0) then v221=v102[2];v100[v221]=v100[v221](v21(v100,v221 + 1 ,v102[3]));break;end end else local v222=v102[2];local v223=v100[v222];local v224=v100[v222 + 2 ];if (v224>0) then if (v223>v100[v222 + 1 ]) then v94=v102[3];else v100[v222 + 3 ]=v223;end elseif (v223<v100[v222 + 1 ]) then v94=v102[3];else v100[v222 + 3 ]=v223;end end elseif (v103<=22) then if (v103>21) then v100[v102[2]]=v100[v102[3]][v102[4]];else local v227=0;while true do if (v227==2) then v100[v102[2]]=v75[v102[3]];v94=v94 + 1 ;v102=v90[v94];v227=3;end if (v227==1) then v100[v102[2]]=v100[v102[9 -6 ]][v102[4]];v94=v94 + (19 -(10 + 8)) ;v102=v90[v94];v227=2;end if (v227==3) then v100[v102[2]]=v100[v102[3]][v102[4]];v94=v94 + 1 ;v102=v90[v94];v227=4;end if (v227==7) then if  not v100[v102[2]] then v94=v94 + 1 ;else v94=v102[3];end break;end if (v227==0) then v100[v102[2]]=v75[v102[3]];v94=v94 + 1 ;v102=v90[v94];v227=1;end if (v227==6) then v100[v102[2]]=v75[v102[3]];v94=v94 + 1 ;v102=v90[v94];v227=7;end if (v227==4) then v100[v102[2]]=v75[v102[11 -8 ]];v94=v94 + 1 ;v102=v90[v94];v227=5;end if (5==v227) then v100[v102[444 -(416 + 26) ]]=v100[v102[3]][v102[4]];v94=v94 + (3 -2) ;v102=v90[v94];v227=6;end end end elseif (v103>(10 + 13)) then v100[v102[2]][v102[3]]=v100[v102[4]];else local v230=0;local v231;local v232;local v233;while true do if (v230==0) then v231=v102[2];v232={v100[v231](v100[v231 + 1 ])};v230=1;end if (v230==1) then v233=0;for v586=v231,v102[4] do local v587=0;while true do if (v587==0) then v233=v233 + 1 ;v100[v586]=v232[v233];break;end end end break;end end end elseif (v103<=(65 -28)) then if (v103<=30) then if (v103<=27) then if (v103<=(463 -(145 + 293))) then local v167=0;local v168;local v169;local v170;local v171;local v172;while true do if (v167==4) then v102=v90[v94];v172=v102[2];v171=v100[v102[3]];v100[v172 + 1 + 0 ]=v171;v100[v172]=v171[v102[4 + 0 ]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]={};v167=5;end if (v167==3) then v94=v94 + 1 ;v102=v90[v94];v172=v102[2];v100[v172]=v100[v172](v21(v100,v172 + 1 ,v95));v94=v94 + 1 ;v102=v90[v94];v100[v102[1488 -(998 + 488) ]]=v100[v102[3]];v94=v94 + 1 ;v167=4;end if (v167==0) then v168=nil;v169,v170=nil;v171=nil;v172=nil;v172=v102[2];v171=v100[v102[3]];v100[v172 + 1 ]=v171;v100[v172]=v171[v102[4]];v167=1;end if (v167==6) then v100[v102[2]]=v102[2 + 1 ];v94=v94 + 1 ;v102=v90[v94];v172=v102[2];v100[v172]=v100[v172](v21(v100,v172 + 1 ,v102[3]));v94=v94 + 1 ;v102=v90[v94];v100[v102[7 -5 ]][v100[v102[3]]]=v100[v102[14 -10 ]];v167=7;end if (v167==1) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[432 -(44 + 386) ]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v167=2;end if (v167==7) then v94=v94 + 1 ;v102=v90[v94];v172=v102[2];v100[v172]=v100[v172](v21(v100,v172 + (860 -(814 + 45)) ,v102[7 -4 ]));v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]];v94=v94 + 1 ;v167=8;end if (v167==8) then v102=v90[v94];v100[v102[2]]=v102[1 + 2 ];break;end if (v167==5) then v94=v94 + (773 -(201 + 571)) ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + (1139 -(116 + 1022)) ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + (4 -3) ;v102=v90[v94];v167=6;end if (v167==2) then v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v172=v102[2];v169,v170=v93(v100[v172](v21(v100,v172 + 1 ,v102[3])));v95=(v170 + v172) -1 ;v168=0;for v411=v172,v95 do local v412=0;while true do if (v412==0) then v168=v168 + 1 ;v100[v411]=v169[v168];break;end end end v167=3;end end elseif (v103==(10 + 16)) then v100[v102[2]]={};else v94=v102[3];end elseif (v103<=28) then local v173=0;local v174;while true do if (v173==0) then v174=v102[887 -(261 + 624) ];v100[v174](v100[v174 + 1 ]);break;end end elseif (v103>29) then v100[v102[2]]=v100[v102[3]] + v102[4] ;else do return v100[v102[2]]();end end elseif (v103<=33) then if (v103<=(54 -23)) then local v175=0;local v176;local v177;while true do if (v175==2) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + (1424 -(630 + 793)) ;v102=v90[v94];v100[v102[2]]=v75[v102[3]];v175=3;end if (v175==5) then do return;end break;end if (v175==3) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]][v102[4]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]][v102[4]];v175=4;end if (v175==4) then v94=v94 + 1 ;v102=v90[v94];v177=v102[2];v100[v177](v21(v100,v177 + 1 ,v102[3]));v94=v94 + 1 ;v102=v90[v94];v175=5;end if (v175==1) then v176=v100[v102[3]];v100[v177 + 1 ]=v176;v100[v177]=v176[v102[4]];v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v175=2;end if (v175==0) then v176=nil;v177=nil;v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v177=v102[1082 -(1020 + 60) ];v175=1;end end elseif (v103>32) then v100[v102[2]]=v102[3]~=0 ;else local v238=0;local v239;local v240;local v241;local v242;local v243;while true do if (v238==0) then v239=nil;v240=nil;v241,v242=nil;v243=nil;v100[v102[6 -4 ]]=v74[v102[3]];v94=v94 + 1 ;v238=1;end if (v238==4) then v102=v90[v94];v243=v102[2];v241,v242=v93(v100[v243](v21(v100,v243 + 1 ,v102[3])));v95=(v242 + v243) -1 ;v240=0;for v588=v243,v95 do local v589=0;while true do if (v589==0) then v240=v240 + 1 ;v100[v588]=v241[v240];break;end end end v238=5;end if (v238==1) then v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v102=v90[v94];v100[v102[9 -7 ]]=v74[v102[3]];v94=v94 + 1 ;v238=2;end if (v238==5) then v94=v94 + 1 ;v102=v90[v94];v243=v102[2];v239=v100[v243];for v590=v243 + 1 ,v95 do v15(v239,v100[v590]);end break;end if (v238==2) then v102=v90[v94];v100[v102[2]]={};v94=v94 + 1 ;v102=v90[v94];v100[v102[1 + 1 ]]=v74[v102[3]];v94=v94 + 1 ;v238=3;end if (v238==3) then v102=v90[v94];v100[v102[2]]=v100[v102[3]];v94=v94 + 1 ;v102=v90[v94];for v591=v102[2],v102[3] do v100[v591]=nil;end v94=v94 + 1 ;v238=4;end end end elseif (v103<=35) then if (v103==34) then local v244=0;local v245;local v246;local v247;local v248;while true do if (v244==4) then for v593=v248,v95 do local v594=0;while true do if (v594==0) then v245=v245 + 1 ;v100[v593]=v246[v245];break;end end end v94=v94 + 1 ;v102=v90[v94];v248=v102[6 -4 ];v244=5;end if (v244==0) then v245=nil;v246,v247=nil;v248=nil;v100[v102[2]]=v74[v102[3]];v244=1;end if (v244==3) then v248=v102[2];v246,v247=v93(v100[v248](v21(v100,v248 + 1 ,v102[3])));v95=(v247 + v248) -1 ;v245=0;v244=4;end if (v244==2) then v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v244=3;end if (v244==5) then v100[v248](v21(v100,v248 + 1 ,v95));break;end if (v244==1) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v244=2;end end else local v249=0;local v250;local v251;local v252;local v253;while true do if (v249==1) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[3]];v94=v94 + 1 ;v249=2;end if (v249==3) then v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v253=v102[2];v249=4;end if (v249==4) then v251,v252=v93(v100[v253](v21(v100,v253 + 1 ,v102[3])));v95=(v252 + v253) -(767 -(745 + 21)) ;v250=0;for v595=v253,v95 do local v596=0;while true do if (v596==0) then v250=v250 + 1 ;v100[v595]=v251[v250];break;end end end v249=5;end if (v249==6) then v94=v94 + 1 ;v102=v90[v94];do return;end break;end if (5==v249) then v94=v94 + 1 ;v102=v90[v94];v253=v102[2];v100[v253](v21(v100,v253 + 1 ,v95));v249=6;end if (v249==0) then v250=nil;v251,v252=nil;v253=nil;v100[v102[2]]=v75[v102[1750 -(760 + 987) ]];v249=1;end if (v249==2) then v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + (1914 -(1789 + 124)) ;v102=v90[v94];v249=3;end end end elseif (v103>(13 + 23)) then local v254=v102[2];local v255,v256=v93(v100[v254](v21(v100,v254 + (2 -1) ,v102[3])));v95=(v256 + v254) -1 ;local v257=0;for v381=v254,v95 do local v382=0;while true do if (v382==0) then v257=v257 + 1 ;v100[v381]=v255[v257];break;end end end else local v258;local v259,v260;local v261;v100[v102[2]]=v102[11 -8 ];v94=v94 + 1 ;v102=v90[v94];v261=v102[2];v100[v261]=v100[v261](v21(v100,v261 + 1 ,v102[3]));v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v261=v102[2];v259,v260=v93(v100[v261](v21(v100,v261 + 1 ,v102[3])));v95=(v260 + v261) -1 ;v258=0;for v383=v261,v95 do local v384=0;while true do if (v384==0) then v258=v258 + 1 ;v100[v383]=v259[v258];break;end end end v94=v94 + 1 ;v102=v90[v94];v261=v102[2];v100[v261]=v100[v261](v21(v100,v261 + 1 ,v95));v94=v94 + 1 ;v102=v90[v94];if (v100[v102[1 + 1 ]]==v102[4]) then v94=v94 + 1 ;else v94=v102[3];end end elseif (v103<=43) then if (v103<=40) then if (v103<=(30 + 8)) then local v178=v102[2];v100[v178](v21(v100,v178 + 1 ,v95));elseif (v103>39) then v100[v102[2]][v100[v102[3]]]=v100[v102[4]];else local v270=0;local v271;local v272;local v273;while true do if (v270==0) then v271=nil;v272=nil;v273=nil;v100[v102[1057 -(87 + 968) ]]={};v270=1;end if (v270==1) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v102[3];v94=v94 + 1 ;v270=2;end if (v270==4) then v272=v100[v273];v271=v100[v273 + 2 ];if (v271>(0 + 0)) then if (v272>v100[v273 + 1 ]) then v94=v102[3];else v100[v273 + 3 ]=v272;end elseif (v272<v100[v273 + (2 -1) ]) then v94=v102[3];else v100[v273 + 3 ]=v272;end break;end if (v270==3) then v100[v102[2]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v273=v102[2];v270=4;end if (2==v270) then v102=v90[v94];v100[v102[2]]= #v100[v102[13 -10 ]];v94=v94 + 1 ;v102=v90[v94];v270=3;end end end elseif (v103<=41) then do return;end elseif (v103>42) then local v274=v102[2];do return v100[v274](v21(v100,v274 + 1 ,v102[3]));end else local v275=0;local v276;while true do if (0==v275) then v276=v102[2];do return v21(v100,v276,v95);end break;end end end elseif (v103<=(1459 -(447 + 966))) then if (v103<=44) then v100[v102[2]]=v75[v102[3]];elseif (v103==45) then local v277=0;local v278;local v279;local v280;local v281;while true do if (v277==0) then v278=v102[2];v279,v280=v93(v100[v278](v21(v100,v278 + 1 ,v95)));v277=1;end if (v277==2) then for v601=v278,v95 do local v602=0;while true do if (v602==0) then v281=v281 + 1 ;v100[v601]=v279[v281];break;end end end break;end if (v277==1) then v95=(v280 + v278) -1 ;v281=0;v277=2;end end else local v282=0;local v283;while true do if (v282==0) then v283=v102[2];v100[v283](v21(v100,v283 + 1 ,v102[3]));break;end end end elseif (v103<=48) then if (v103==47) then v100[v102[2]]=v100[v102[3]];else local v286=0;local v287;local v288;local v289;while true do if (v286==5) then v94=v94 + 1 ;v102=v90[v94];v288=v102[3];v287=v100[v288];v286=6;end if (v286==7) then v289=v102[2];v100[v289](v100[v289 + 1 ]);v94=v94 + 1 ;v102=v90[v94];v286=8;end if (v286==6) then for v603=v288 + 1 ,v102[4] do v287=v287   .. v100[v603] ;end v100[v102[1 + 1 ]]=v287;v94=v94 + 1 ;v102=v90[v94];v286=7;end if (4==v286) then v100[v289]=v100[v289](v21(v100,v289 + (2 -1) ,v102[3]));v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v100[v102[3]];v286=5;end if (v286==1) then v94=v94 + 1 ;v102=v90[v94];v100[v102[2]]=v74[v102[8 -5 ]];v94=v94 + (1818 -(1703 + 114)) ;v286=2;end if (v286==2) then v102=v90[v94];v100[v102[703 -(376 + 325) ]]=v102[3];v94=v94 + 1 ;v102=v90[v94];v286=3;end if (v286==8) then do return;end break;end if (3==v286) then v100[v102[2]]=v102[3];v94=v94 + (1 -0) ;v102=v90[v94];v289=v102[2];v286=4;end if (v286==0) then v287=nil;v288=nil;v289=nil;v100[v102[2]]=v74[v102[3]];v286=1;end end end elseif (v103==49) then local v290=v102[2];local v291=v100[v290];for v385=v290 + 1 ,v95 do v15(v291,v100[v385]);end else v100[v102[2]]= #v100[v102[3]];end v94=v94 + 1 ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012153Q00013Q00206Q000200122Q000100013Q00202Q00010001000300122Q000200013Q00202Q00020002000400122Q000300053Q00062Q0003000A0001000100041B3Q000A000100122C000300063Q00201600040003000700122C000500083Q00201600050005000900122C000600083Q00201600060006000A002Q0600073Q000100062Q002F3Q00064Q002F8Q002F3Q00044Q002F3Q00014Q002F3Q00024Q002F3Q00053Q00122C000800013Q00201600080008000B00122C0009000C3Q00122C000A000D3Q002Q06000B0001000100052Q002F3Q00074Q002F3Q00094Q002F3Q00084Q002F3Q000A4Q002F3Q000B4Q002F000C000B4Q001D000C00014Q002A000C6Q00293Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q002700025Q00122Q000300016Q00045Q00122Q000500013Q00042Q0003002100012Q000F00078Q000800026Q000900016Q000A00026Q000B00036Q000C00046Q000D8Q000E00063Q00202Q000F000600014Q000C000F6Q000B3Q00024Q000C00036Q000D00046Q000E00016Q000F00016Q000F0006000F00102Q000F0001000F4Q001000016Q00100006001000102Q00100001001000202Q0010001000014Q000D00106Q000C8Q000A3Q000200202Q000A000A00024Q0009000A6Q00073Q00010004080003000500012Q000F000300054Q002F000400024Q002B000300044Q002A00036Q00293Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q002Q065Q000100012Q000F8Q0020000100016Q000200026Q000300026Q00048Q000500036Q00068Q000700076Q000500076Q00043Q0001002016000400040001001224000500026Q00030005000200122Q000400036Q000200046Q00013Q000200262Q000100180001000400041B3Q001800012Q002F00016Q001A00026Q002B000100024Q002A00015Q00041B3Q001B00012Q000F000100044Q001D000100014Q002A00016Q00293Q00013Q00013Q00183Q00030E3Q0073637269707453652Q74696E677303053Q00646562756703053Q007072696E74031C3Q000DCF61FF13CE63EF1FD973E076D350C93FF34ECE76D04FDC32F9449303043Q00BD569C2003793Q007552E8F56E1CB3AA794FEFE67254F8AB7E49F1AA7C56F5AA6A43FEED7249F7F63217AFB52B16A8B02A17AAB62910A8B62A10A4B7324AAFDD6956C9FC2575C3F05F41DFD54A64A5CF6961D6ED7317ECB24B48D3F47054D4D24256F7C0476CDAED4D72AFE9674AFBEF6D4BDEBC5A57CAEC2B6FADC64749C6BC7003043Q00851D269C03043Q0067616D65030A3Q004765745365727669636503113Q00B746B8AB8C40A9B380479BB38A51A9A08003043Q00C7E523C8030C3Q0057616974466F724368696C64030D3Q000B1C79713D1D7D7F29077D732603043Q001C487314030E3Q0046696E6446697273744368696C6403093Q001517BEDDC699D5370A03073Q00BC5479DFB1BFED028Q0003073Q0044657374726F79031F3Q00FA8877EBA4F39864E0A4F28616E88FD5B255C184C0AF16FB84CCB440CC858F03053Q00E1A1DB36A9026Q00F03F027Q004003053Q007063612Q6C01603Q00060A3Q005E00013Q00041B3Q005E000100122C000100013Q00060E000100060001000100041B3Q000600012Q001A00015Q00201600020001000200060E0002000A0001000100041B3Q000A00012Q002100025Q00101800010002000200060A0001001300013Q00041B3Q0013000100122C000200034Q002200035Q00122Q000400043Q00122Q000500056Q000300056Q00023Q00012Q000F00025Q001204000300063Q00122Q000400076Q00020004000200122Q000300083Q00202Q0003000300094Q00055Q00122Q0006000A3Q00122Q0007000B6Q000500076Q00033Q000200202Q00030003000C4Q00055Q00122Q0006000D3Q00122Q0007000E6Q000500076Q00033Q000200202Q00030003000F4Q00055Q00122Q000600103Q00122Q000700116Q000500076Q00033Q000200062Q0003003900013Q00041B3Q00390001001201000400123Q0026070004002D0001001200041B3Q002D000100200D0005000300132Q000300050002000100122Q000500036Q00065Q00122Q000700143Q00122Q000800156Q000600086Q00053Q000100044Q0039000100041B3Q002D000100201600040001000200060A0004005C00013Q00041B3Q005C0001001201000400124Q0005000500083Q002607000400450001001200041B3Q004500012Q0005000500053Q002Q0600053Q000100022Q002F3Q00024Q000F7Q001201000400163Q002607000400530001001700041B3Q0053000100122C000900183Q002Q06000A0001000100012Q000F8Q001700090002000A2Q002F0008000A4Q002F000700093Q00060E0007005B0001000100041B3Q005B00012Q002F000900064Q002F000A00084Q001C00090002000100041B3Q005B00010026070004003E0001001600041B3Q003E00012Q0005000600063Q002Q0600060002000100022Q002F3Q00054Q000F7Q001201000400173Q00041B3Q003E00012Q000200046Q000200015Q00041B3Q005F000100201600013Q00162Q00293Q00013Q00033Q000A3Q00028Q00026Q00F03F03053Q007063612Q6C03043Q0067616D65030A3Q0047657453657276696365030B3Q00782441357A47284639562003073Q005A305035452922030A3Q004A534F4E456E636F646503073Q0028B3CDC3F625A803053Q00934BDCA3B701333Q001201000100014Q0005000200043Q0026070001002C0001000200041B3Q002C00012Q0005000400043Q0026070002000E0001000200041B3Q000E000100122C000500033Q002Q0600063Q000100032Q002F3Q00034Q000F8Q002F3Q00044Q001C00050002000100041B3Q00320001002607000200050001000100041B3Q00050001001201000500013Q002607000500250001000100041B3Q0025000100122C000600043Q0020190006000600054Q000800013Q00122Q000900063Q00122Q000A00076Q0008000A6Q00063Q00024Q000300063Q00202Q0006000300084Q00083Q00014Q000900013Q00122Q000A00093Q00122Q000B000A6Q0009000B00024Q000800096Q0006000800024Q000400063Q00122Q000500023Q002607000500110001000200041B3Q00110001001201000200023Q00041B3Q0005000100041B3Q0011000100041B3Q0005000100041B3Q00320001002607000100020001000100041B3Q00020001001201000200014Q0005000300033Q001201000100023Q00041B3Q000200012Q00293Q00013Q00013Q00043Q0003093Q00506F73744173796E6303043Q00456E756D030F3Q00482Q7470436F6E74656E7454797065030F3Q00412Q706C69636174696F6E4A736F6E00094Q001F7Q00206Q00014Q000200016Q000300023Q00122Q000400023Q00202Q00040004000300202Q0004000400046Q000400016Q00017Q00033Q0003053Q00652Q726F7203243Q0019D00FAF87033EDC06FA8E1038D610FA8D0D389916BF981623D705FA9B1738C90DA98E1103063Q00624AB962DAEB00073Q0012233Q00016Q00015Q00122Q000200023Q00122Q000300036Q000100039Q0000016Q00017Q00023Q00030E3Q008FD92E280BEAC733201EAFCF666703053Q0079CAAB5C4701094Q003000018Q000200013Q00122Q000300013Q00122Q000400026Q0002000400024Q00038Q0002000200034Q0001000200016Q00017Q00",v17(),...);
