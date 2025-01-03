
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-rolling-ros-testing";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/rolling/ros_testing/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "6dac482fe12c19911291d3a73f7bd6ad8041a9f9891d7d22b439deb604d3da96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-core ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros ros2test ];
  nativeBuildInputs = [ ament-cmake launch-testing-ament-cmake ros2test ];

  meta = {
    description = "The entry point package to launch testing in ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
