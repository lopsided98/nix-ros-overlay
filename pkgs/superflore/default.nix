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
    rev = "10b370b2832dcce3cb630eb06a365dc2302d5ce5";
    hash = "sha256-ipdJnsT/MeOyZMXoIdEVquV+Y0auKQVGmVc3EHZg4dk=";
    # date = "2026-08-27T17:27:37+02:00";
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
