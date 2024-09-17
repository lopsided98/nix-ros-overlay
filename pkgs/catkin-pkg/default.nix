{ lib, buildPythonPackage, fetchPypi, python-dateutil, docutils
, pyparsing, setuptools }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "1.0.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-R26fUpFygvRkc5JBtLyvXrv7qaemjZr4+HUiX+rA4bU=";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing setuptools ];

  meta = with lib; {
    description = "Library for retrieving information about catkin packages";
    homepage = "https://wiki.ros.org/catkin_pkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
