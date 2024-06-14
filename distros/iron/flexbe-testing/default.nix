
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-flexbe-testing";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_testing/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "7c0f6dd6bae73c51621a35719aca3cc0643a7d55ac1ef263fb13c033e7bfe6c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 launch-testing pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs launch-ros rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "flexbe_testing provides a framework for unit testing states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
