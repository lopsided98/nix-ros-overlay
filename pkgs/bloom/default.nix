{
  buildPythonPackage,
  catkin-pkg,
  empy_3,
  fetchFromGitHub,
  fetchpatch,
  lib,
  rosdep,
  rosdistro,
  setuptools,
  vcstools,
}:

buildPythonPackage rec {
  pname = "bloom";
  version = "0.13.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ros-infrastructure";
    repo = "bloom";
    rev = version;
    hash = "sha256-sKtLAHCwdzSGCa/jTx6ItImyCJr7ssKQafDkb4ayB8k=";
  };

  patches = [
    (fetchpatch {
      # ref. https://github.com/ros-infrastructure/bloom/pull/705
      name = "debian-architecture-independant.patch";
      url = "https://github.com/ros-infrastructure/bloom/commit/9e2de64bf1aa286087c70ddad658b0d57339d1fd.patch";
      hash = "sha256-zX6g0TdaJ6kEnRXiA/lBd7mO8mAefKEyYbd77KPXMjk=";
    })
  ];

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
