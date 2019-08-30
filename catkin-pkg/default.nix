{ lib, buildPythonPackage, fetchPypi, fetchpatch, python-dateutil, docutils
, pyparsing }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.4.13";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1452vc93zpgv2kvl9vyzkbrb7dn6rabfn1hvmlnhnqrq3f3k5zrs";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing ];

  meta = with lib; {
    description = "Library for retrieving information about catkin packages";
    homepage = "http://wiki.ros.org/catkin_pkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
