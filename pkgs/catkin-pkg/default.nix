{ lib, buildPythonPackage, fetchPypi, fetchpatch, python-dateutil, docutils
, pyparsing, setuptools }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.5.2";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-XWQ+6vvOSJD8zq+dsZfq3yyloYfSVZP2W25cV5NfXaI=";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing setuptools ];

  meta = with lib; {
    description = "Library for retrieving information about catkin packages";
    homepage = "https://wiki.ros.org/catkin_pkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
