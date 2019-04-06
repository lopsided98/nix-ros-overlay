{ buildPythonPackage, fetchPypi, fetchpatch, python-dateutil, docutils
, pyparsing }:

buildPythonPackage rec {
  pname = "catkin_pkg";
  version = "0.4.10";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "1nv4kgapn6rbdvfgz96z5h5jdga6zca3gg1a5r3n8giykzkmy992";
  };

  # Fix argparse requirement
  patches = [ (fetchpatch {
    url = https://github.com/ros-infrastructure/catkin_pkg/commit/5cf0ea92d9ff888d48413b2948370a0bbb34abdc.patch;
    sha256 = "04v3wjwmh1chziqqhxmgf47dgmcxqaissn1zjjx1jblbn2ar5fav";
  }) ];

  propagatedBuildInputs = [ python-dateutil docutils pyparsing ];

  meta = {
    description = "Library for retrieving information about catkin packages";
    homepage = http://wiki.ros.org/catkin_pkg;
  };
}
