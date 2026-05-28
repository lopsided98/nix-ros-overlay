
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-index-python, ament-pep257, flexbe-core, flexbe-msgs, launch-ros, launch-testing, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-flexbe-testing";
  version = "4.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_testing/4.1.4-1.tar.gz";
    name = "4.1.4-1.tar.gz";
    sha256 = "db0f164426ebd44793e0b5db6fd3e94e6e080b5a1dca3a629912546775ae0fb2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 launch-testing python3Packages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python flexbe-core flexbe-msgs launch-ros rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "flexbe_testing provides a framework for unit testing states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
