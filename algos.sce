//pt livr p45
//is in interval
tablo=[[0 10];[0 1]]
tabloRect=[[0 10 20];[0 1 4]]
function [y]=interpol(listXY,targetX)


endfunction

//2 val : matrix 2*2
//TESTED
function [y]=interpol2val(listXY,targetX)

    //pente=tablo(1,1)
    //SI 2 val
    pente=(tablo(2,2)-tablo(2,1))/(tablo(1,2)-tablo(1,1))
    y=tablo(2,1)+(targetX-tablo(1,1))*pente
endfunction
//test interpol(tablo,3) -> .3


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
