{ lib, buildPythonPackage, fetchFromGitHub, xmltodict, termcolor, setuptools
, rosinstall-generator, rosdistro, rosdep, GitPython, requests, docker, pyyaml
, PyGithub, catkin-pkg, rospkg
}:

buildPythonPackage rec {
  pname = "superflore";
  version = "unstable-2020-08-24";

  src = fetchFromGitHub {
    owner = "lopsided98";
    repo = pname;
    rev = "95f3d3522a65f95bf2008a1a8e80d3b52a794b8d";
    sha256 = "0sg1rba90qimvf4pp90jnj3qzwd7wi6j9mfzyzfx8sa6z4x1amww";
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
