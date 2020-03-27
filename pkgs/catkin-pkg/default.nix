{ lib, buildPythonPackage, fetchPypi, fetchpatch, python-dateutil, docutils
, pyparsing }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.4.14";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0d5jchqxvg68ry0nzw54vh38a4sfp5kqnxgrvcwqfa7wvki5lbpw";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing ];

  meta = with lib; {
    description = "Library for retrieving information about catkin packages";
    homepage = "http://wiki.ros.org/catkin_pkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
