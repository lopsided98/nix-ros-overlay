{ lib, buildPythonPackage, fetchPypi, fetchpatch, python-dateutil, docutils
, pyparsing }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.4.24";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1d666bb8ia4vwvw5981s94yrid1pcv8c9zhk3xl4zdccbp624vgj";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing ];

  meta = with lib; {
    description = "Library for retrieving information about catkin packages";
    homepage = "http://wiki.ros.org/catkin_pkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
