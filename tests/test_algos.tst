// Charger le code à tester
//exec("./tests/test_algos.tst", -1);
exec("./src/algos.sci", -1);


// Test interpol2val
tablo=[[0 10];[0 1]];
res=interpol2val(tablo,3);//exec("./src/algos.sci", -1);res=interpol2val(tablo,3);
if abs(res - .3)>.0001 then
    error("Test interpol2val(tablo,3) échoué");
end





