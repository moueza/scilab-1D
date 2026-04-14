//pt livr https://github.com/moueza/isbn-2-287-59731-X-introduction-a-Scilab p45
//resampling //https://moueza.github.io/isbn-0-8176-4009-6-engineering-and-scientific-computing-with-Scilab/ p210
//is in interval
//exec("./tests/test_algos.tst", -1);
tablo=[[0 10];[0 1]]
tabloRect=[[0 10 20];[0 1 4]]

function [y]=interpol(listXY,targetX)
// interpolation clone https://help.scilab.org/docs/5.3.0/fr_FR/interpln.html

endfunction
//test:

//2 val : matrix 2*2
//TESTED
function [y]=interpol2val(listXY,targetX)

    //pente=tablo(1,1)
    //SI 2 val
    pente=(tablo(2,2)-tablo(2,1))/(tablo(1,2)-tablo(1,1))
    y=tablo(2,1)+(targetX-tablo(1,1))*pente
endfunction
  //TODO linear functions, regressions, least-squares, TIMES series
//test  listXY=[0 1 2; 0 1 0]; targetX=[-1 0 1 2 3]; interpol2val(listXY,targetX) 0 because no aline at x=-1
//test  listXY=[0 1 2; 0 1 0]; targetX=[-1 0 1 2 3]; interpol2val(listXY,1)
//test  listXY=[0 1 2; 0 1 0]; targetX=[-1 0 1 2 3]; interpol2val(listXY,-1)

//upper or lower interval
function [y]=extrapol(listXY,targetX)
    if targetX < listXY(1,1) then
        deltaY=listXY(2,2)-listXY(2,1)
        deltaX=listXY(1,2)-listXY(1,1)
        pentePremiere=deltaY/deltaX
        deltaXtarget=listXY(1,1)-targetX
        deltaYtarget=deltaXtarget*pentePremiere
        y=tablo(2,1)-deltaYtarget

    else
        //ca ne peut etre que l 1 ou l autre pour CETTE fx
        //sizee=size(listXY)
        colNb=size(listXY)(1,2)
        print 'colNb'.colNb
        deltaY=listXY(2,colNb)-listXY(2,colNb-1)
        deltaX=listXY(1,colNb)-listXY(1,colNb-1)
        penteDerniere=deltaY/deltaX
        deltaXtarget=targetX-listXY(1,colNb)
        deltaYtarget=deltaXtarget*penteDerniere
        y=listXY(2,colNb)+deltaYtarget
    end
    //test extrapol(tablo,-3) -> -.3
    //test extrapol(tablo,15) -> 1.5
      //test extrapol(tabloRect,-3) -> -.3
    //test extrapol(tabloRect,15) -> 2.5

endfunction

//intrapole extrapole
function [y]=intrExPole(listXY,targetX)



endfunction


//zerosOfLigneBrisee 
//sortp
//TODO Unit test 
//new Dates allows merge of 2 rows : ex : HR1 of 1 source from time t1, +  HR1 of 1 source from time t2 (Polar Flow + Beat)
