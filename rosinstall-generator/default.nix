{ lib, buildPythonPackage, fetchPypi, catkin-pkg, rosdistro, rospkg, pyyaml }:

buildPythonPackage rec {
  pname = "rosinstall_generator";
  version = "0.1.16";

  src = fetchPypi {
    inherit pname version;
    sha256 = "15ckrcr16py0syxw5wg0yn0v6kdlr26ix57sm9qgy0zpz0ayw3i8";
  };

  propagatedBuildInputs = [ catkin-pkg rosdistro rospkg pyyaml ];

  meta = with lib; {
    description = "A tool to generator rosinstall files";
    homepage = http://wiki.ros.org/rosinstall_generator;
    license = licenses.bsd3;
  };
}
