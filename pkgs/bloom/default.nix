{
  buildPythonPackage,
  catkin-pkg,
  empy_3,
  fetchFromGitHub,
  lib,
  rosdep,
  rosdistro,
  setuptools,
  vcstools,
}:

buildPythonPackage rec {
  pname = "bloom";
  version = "0.12.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ros-infrastructure";
    repo = "bloom";
    rev = version;
    hash = "sha256-kTep9kjS1xNyTfuKEtMts2pVGMOXzUqDyMUwEpcbRXo=";
  };

  build-system = [ setuptools ];

  dependencies = [
    catkin-pkg
    empy_3
    rosdep
    rosdistro
    vcstools
  ];

  pythonImportsCheck = [ "bloom" ];

  meta = {
    description = "A release automation tool which makes releasing catkin (http://ros.org/wiki/catkin) packages easier";
    homepage = "https://github.com/ros-infrastructure/bloom";
    changelog = "https://github.com/ros-infrastructure/bloom/blob/${src.rev}/CHANGELOG.rst";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ nim65s ];
  };
}
