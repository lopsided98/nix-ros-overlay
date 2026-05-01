
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-nodl-python";
  version = "0.3.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/nodl_python/0.3.1-6.tar.gz";
    name = "0.3.1-6.tar.gz";
    sha256 = "26e2f4222cc8729a9cd038211a3626fcac3a7141f5690c6633e0582aa41e1bc7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = "Implementation of the NoDL API in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
