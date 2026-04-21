set OPENSSL_DIR=%LIBRARY_PREFIX%

cd python

del LICENSE
copy ..\LICENSE .

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
