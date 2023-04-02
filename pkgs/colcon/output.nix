{ lib, buildPythonPackage, fetchPypi, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-output";
  version = "0.2.12";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-ohHp8fcO2xVnwHR1Mq0iLkd5nO8ly4Y+SkOvRmB5izA=";
  };

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to customize the output in various ways.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
