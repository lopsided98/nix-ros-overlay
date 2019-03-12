{ buildPythonPackage, fetchPypi, python-dateutil, docutils, pyparsing }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.4.10";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "1nv4kgapn6rbdvfgz96z5h5jdga6zca3gg1a5r3n8giykzkmy992";
  };

  propagatedBuildInputs = [ python-dateutil docutils pyparsing ];

  meta = {
    description = "Library for retrieving information about catkin packages";
    homepage = http://wiki.ros.org/catkin_pkg;
  };
}
