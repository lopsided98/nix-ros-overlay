
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-iron-ros-testing";
  version = "0.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/iron/ros_testing/0.5.2-3.tar.gz";
    name = "0.5.2-3.tar.gz";
    sha256 = "7e2eeb78d2d37eee9c0042e9e52cc4b86d9d3437582c490883c451dd7b28f498";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-core ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros ros2test ];
  nativeBuildInputs = [ ament-cmake launch-testing-ament-cmake ros2test ];

  meta = {
    description = ''The entry point package to launch testing in ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
