
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-kilted-ros-testing";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/kilted/ros_testing/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "ed4f3c803397d2f35c5fc4ea92951b11a07e271c324983d8dc0c74280e164c20";
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
