
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-lyrical-ros-testing";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/lyrical/ros_testing/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "1df280d5587eb4dcc47e04fc02dbaad5cf1baefa94bc0b500d69e12644ddc940";
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
