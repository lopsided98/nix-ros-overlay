{ lib, buildPythonPackage, fetchPypi, dateutil }:

buildPythonPackage rec {
  pname = "bson";
  version = "0.5.10";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "14355m3dchz446fl54ym78bn4wi20hddx1614f8rl4sin0m1nlfn";
  };

  propagatedBuildInputs = [ dateutil ];

  meta = with lib; {
    description = "Independent BSON codec for Python that doesn't depend on MongoDB.";
    homepage = "https://github.com/py-bson/bson";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
