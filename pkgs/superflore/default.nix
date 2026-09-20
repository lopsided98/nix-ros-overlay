{ lib, buildPythonPackage, fetchFromGitHub, xmltodict, termcolor, setuptools
, rosinstall-generator, rosdistro, rosdep, gitpython, requests, docker, pyyaml
, pygithub, catkin-pkg, rospkg
}:

buildPythonPackage rec {
  pname = "superflore";
  version = "0.3.3-unstable-2026-05-05";

  src = fetchFromGitHub {
    owner = "wentasah";
    repo = "superflore";
    # ref = "refs/heads/nixos";
    rev = "12843e96b8ed8493465902b1c1b2936379a71b14";
    hash = "sha256-ZYQX2vkUDVfLgp5a+g2rW2t2aQvHFTCv6KzmGQ7bQ8Y=";
    # date = "2026-09-18T22:03:29+02:00";
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
