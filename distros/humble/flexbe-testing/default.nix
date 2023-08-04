
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-flexbe-testing";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_testing/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "d56c6dd9eb32da4e2b95ab4bcf0305e1f6f12e006c7b0f067c48f3e34937c65c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 launch-testing pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs launch-ros rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
