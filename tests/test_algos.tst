// Charger le code à tester
//exec("./tests/test_algos.tst", -1);
exec("./src/math_algos.sci", -1);

// Test add
res = add(2, 3);
if res <> 5 then
    error("Test add échoué");
end

// Test square
res = square(4);
if res <> 16 then
    error("Test square échoué");
end





