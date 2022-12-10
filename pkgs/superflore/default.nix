{ lib, buildPythonPackage, fetchFromGitHub, xmltodict, termcolor, setuptools
, rosinstall-generator, rosdistro, rosdep, GitPython, requests, docker, pyyaml
, PyGithub, catkin-pkg, rospkg
}:

buildPythonPackage rec {
  pname = "superflore";
  version = "unstable-2022-12-09";

  src = fetchFromGitHub {
    owner = "lopsided98";
    repo = pname;
    rev = "385eebb9465b8ab7c0b1c7de4d86d81362fe10fa";
    hash = "sha256-ZrB4mUAClQbqVnbAVaNlrK+tDCpUf502q0gTzxGBeSQ=";
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
