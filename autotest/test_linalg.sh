. ${AUTOTEST:-..}/assert.sh

assert $(numpy dot '1,2,3' '4;5;6') -eq 32

assert "$(numpy linalg.norm '1,2;3,4' ord=1 axis=0)" = "4,6"
assert "$(numpy linalg.norm '1,2;3,4' ord=1 axis=1)" = "3,7"
assert "$(numpy linalg.norm '1,2;3,4' ord=2 axis=0)" = "3.1622777,4.472136"
assert "$(numpy linalg.norm '1,2;3,4' ord=2 axis=1)" = "2.236068,5"
assert "$(numpy linalg.norm '1,2;3,4' ord=inf axis=0)" = "3,4"
assert "$(numpy linalg.norm '1,2;3,4' ord=inf axis=1)" = "2,4"
assert "$(numpy linalg.norm '1,2;3,4' ord=-inf axis=0)" = "1,2"
assert "$(numpy linalg.norm '1,2;3,4' ord=-inf axis=1)" = "1,3"

assert "$(numpy linalg.cond '1,2;3,4')" = "14.933034"
assert "$(numpy linalg.cond '1,2;3,4' p=fro)" = "15"
assert "$(numpy linalg.cond '1,2;3,4' p=inf)" = "21"
assert "$(numpy linalg.cond '1,2;3,4' p=-inf)" = "6"
assert "$(numpy linalg.cond '1,2;3,4' p=1)" = "21"
assert "$(numpy linalg.cond '1,2;3,4' p=-1)" = "6"
assert "$(numpy linalg.cond '1,2;3,4' p=2)" = "14.933034"
assert "$(numpy linalg.cond '1,2;3,4' p=-2)" = "0.066965626"

assert "$(numpy linalg.det '1,2;3,4')" -eq -2

assert "$(numpy linalg.matrix_rank '1,2;3,4')" -eq 2

assert "$(numpy linalg.slogdet '1,2;3,4' | numpy transpose)" = "-1,0.69314718"

assert "$(numpy linalg.solve '1,2;3,4' '5;6' | numpy transpose)" = "-4,4.5"

assert "$(numpy linalg.lstsq '1,2;3,4;5,6' '7;8;9' | tr '\n' ';')" = "-6;6.5;7.0997481e-30;2;9.5255181,0.51430058;"

assert "$(numpy trace '1,2;3,4')" -eq 5

assert "$(numpy linalg.inv '1,2;3,4' | tr '\n' ';')" = "-2,1;1.5,-0.5;"

assert "$(numpy linalg.pinv '1,2;3,4' | tr '\n' ';')" = "-2,1;1.5,-0.5;"

assert "$(numpy linalg.qr '1,2;3,4' | tr '\n' ';')" = "-0.31622777,-0.9486833;-0.9486833,0.31622777;-3.1622777,-4.4271887;0,-0.63245553;"

assert "$(numpy linalg.svd '1,2;3,4' | tr '\n' ';')" = "-0.40455358,-0.9145143;-0.9145143,0.40455358;5.4649857,0.36596619;-0.57604844,-0.81741556;0.81741556,-0.57604844;"

assert "$(numpy linalg.eig '1,2;3,4' | tr '\n' ';')" = "-0.37228132,5.3722813;-0.82456484,-0.41597356;0.56576746,-0.90937671;"

assert "$(numpy linalg.eigh '1,2;3,4' | tr '\n' ';')" = "-0.85410197,5.854102;-0.85065081,0.52573111;0.52573111,0.85065081;"

assert "$(numpy linalg.eigvals '1,2;3,4')" = "-0.37228132,5.3722813"

assert "$(numpy linalg.eigvalsh '1,2;3,4')" = "-0.85410197,5.854102"
