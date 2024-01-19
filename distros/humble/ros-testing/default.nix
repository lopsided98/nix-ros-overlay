
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-humble-ros-testing";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/humble/ros_testing/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "d11fe885a4ee83c4ba2bf312c8d5dd556ab06d32368865741793c04e70660a40";
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
