
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-jazzy-ros-testing";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/jazzy/ros_testing/0.6.0-3.tar.gz";
    name = "0.6.0-3.tar.gz";
    sha256 = "29963ef7caf1beca81103f3081e0f7cd086d05ae3723073d67f293990042f5da";
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
