
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, launch-ros, launch-testing, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-flexbe-testing";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_testing/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "77518fdaf0b99006a7d516e8bd3332eca661c6e9cc794bce11a3477637bc3a9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 launch-testing python3Packages.pytest std-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs launch-ros rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "flexbe_testing provides a framework for unit testing states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
