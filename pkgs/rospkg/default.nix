{ lib, buildPythonPackage, fetchPypi, catkin-pkg, pyyaml, distro }:

buildPythonPackage rec {
  pname = "rospkg";
  version = "1.5.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-/OdqdHd4bDcymBJiGY6iUPCX+I4NMynBDBEGm/QMpgQ=";
  };

  propagatedBuildInputs = [ catkin-pkg pyyaml distro ];

  setupHook = ./setup-hook.sh;

  meta = with lib; {
    description = "Library for retrieving information about ROS packages and stacks";
    homepage = "https://wiki.ros.org/rospkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
