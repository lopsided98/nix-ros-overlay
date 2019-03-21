{ lib, buildPythonPackage, fetchPypi, catkin-pkg, rosdistro, rospkg, pyyaml }:

buildPythonPackage rec {
  pname = "rosinstall_generator";
  version = "0.1.14";

  src = fetchPypi {
    inherit pname version;
    sha256 = "058wld3gcnziprsgm7c5pvdscm181nywshsfpxddyhcqr12dswjk";
  };

  propagatedBuildInputs = [ catkin-pkg rosdistro rospkg pyyaml ];

  meta = with lib; {
    description = "A tool to generator rosinstall files";
    homepage = http://wiki.ros.org/rosinstall_generator;
    license = licenses.bsd3;
  };
}
