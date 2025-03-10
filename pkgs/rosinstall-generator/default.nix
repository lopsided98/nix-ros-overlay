{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  fetchpatch,
  catkin-pkg,
  rosdistro,
  rospkg,
  pyyaml,
  distutils,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "rosinstall_generator";
  version = "0.1.23";

  src = fetchFromGitHub {
    owner = "ros-infrastructure";
    repo = pname;
    rev = version;
    hash = "sha256-4Kan5MGfr4dMsSNTBf4RXsC4ae8mzeU2tgBdAsOw2IY=";
  };

  nativeBuildInputs = [ distutils ];

  propagatedBuildInputs = [
    catkin-pkg
    rosdistro
    rospkg
    pyyaml
  ];

  checkInputs = [ pytestCheckHook ];

  meta = with lib; {
    description = "Tool to generate rosinstall files";
    homepage = "http://wiki.ros.org/rosinstall_generator";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
