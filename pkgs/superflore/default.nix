{ lib, buildPythonPackage, fetchFromGitHub, xmltodict, termcolor, setuptools
, rosinstall-generator, rosdistro, rosdep, gitpython, requests, docker, pyyaml
, pygithub, catkin-pkg, rospkg
}:

buildPythonPackage rec {
  pname = "superflore";
  version = "0.3.3-unstable-2025-11-15";

  src = fetchFromGitHub {
    owner = "wentasah";
    repo = "superflore";
    rev = "92bbab9db712127814a0e5b0f3d6132cf5d8117b";
    hash = "sha256-jT4V5q4EuFWnx2yImVysPZiYdwKcJGvLHSdU/GRYVAg=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    xmltodict
    termcolor
    setuptools
    rosinstall-generator
    rosdistro
    rosdep
    gitpython
    requests
    docker
    pyyaml
    pygithub
    catkin-pkg
    rospkg
  ];

  # Tests require internet
  doCheck = false;

  meta = with lib; {
    description = "Extended release manager for ROS";
    homepage = "https://github.com/ros-infrastructure/superflore";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
