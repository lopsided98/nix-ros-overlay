
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-nodl-python";
  version = "0.3.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/nodl_python/0.3.1-5.tar.gz";
    name = "0.3.1-5.tar.gz";
    sha256 = "2f35f41bb63410ca4fb56fad8a3367b59d044edbe862fe49e891e35b51a5debd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = "Implementation of the NoDL API in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
