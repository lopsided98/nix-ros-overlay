{ buildPythonPackage, fetchPypi, fetchpatch, python-dateutil, docutils
, pyparsing }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.4.12";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "0dpv1am8qfz81jff99dhqpp6x73yfbpykv9yr2c29fdig77zvzbp";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing ];

  meta = {
    description = "Library for retrieving information about catkin packages";
    homepage = http://wiki.ros.org/catkin_pkg;
  };
}
