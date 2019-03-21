{ lib, buildPythonPackage, fetchPypi, rospkg, catkin-pkg, pyyaml }:

buildPythonPackage rec {
  pname = "rosdistro";
  version = "0.7.2";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "15b1ylfzrjniki3kpbabs0cb86ij2dv0qikgiy7hkw6mcx8588v6";
  };

  propagatedBuildInputs = [ rospkg catkin-pkg pyyaml ];

  meta = with lib; {
    description = "A tool to work with rosdistro files";
    homepage = http://wiki.ros.org/rosdistro;
    license = licenses.bsd3;
  };
}
