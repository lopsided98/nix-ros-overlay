
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-rolling-ros-testing";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/rolling/ros_testing/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "bc6eeb6856f186d450bfbc1db43be820ea1b1f9211cd0a4f8d10204d27bb2c77";
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
