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
  version = "0.14.3";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ros-infrastructure";
    repo = "bloom";
    rev = version;
    hash = "sha256-gQNk3HbSSsN8yet330x438+HIZBrS48z55kWt6ASBeI=";
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
    description = "A release automation tool which makes releasing catkin packages easier";
    longDescription = "A release automation tool which makes releasing catkin (http://ros.org/wiki/catkin) packages easier";
    homepage = "https://github.com/ros-infrastructure/bloom";
    changelog = "https://github.com/ros-infrastructure/bloom/blob/${src.rev}/CHANGELOG.rst";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ nim65s ];
  };
}
