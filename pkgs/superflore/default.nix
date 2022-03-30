{ lib, buildPythonPackage, fetchFromGitHub, xmltodict, termcolor, setuptools
, rosinstall-generator, rosdistro, rosdep, GitPython, requests, docker, pyyaml
, PyGithub, catkin-pkg, rospkg
}:

buildPythonPackage rec {
  pname = "superflore";
  version = "unstable-2022-03-28";

  src = fetchFromGitHub {
    owner = "lopsided98";
    repo = pname;
    rev = "e3fa8e901c553e7545f1afd127209711c8fde8a6";
    sha256 = "sha256-zg55/K3ecBZ2wMmpeiFbiG+1STp2kWGgM7xO9X+Irv0=";
  };

  propagatedBuildInputs = [
    xmltodict
    termcolor
    setuptools
    rosinstall-generator
    rosdistro
    rosdep
    GitPython
    requests
    docker
    pyyaml
    PyGithub
    catkin-pkg
    rospkg
  ];

  # Tests require internet
  doCheck = false;

  meta = with lib; {
    description = "An extended release manager for ROS";
    homepage = "https://github.com/ros-infrastructure/superflore";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
