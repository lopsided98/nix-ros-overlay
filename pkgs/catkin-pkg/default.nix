{ lib, buildPythonPackage, fetchPypi, fetchpatch, python-dateutil, docutils
, pyparsing }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.4.23";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1l6k3hcyxqqnb5m10z5clmf4gqcpibsm2wrrz6mhlz42r8f1ivi8";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing ];

  meta = with lib; {
    description = "Library for retrieving information about catkin packages";
    homepage = "http://wiki.ros.org/catkin_pkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
