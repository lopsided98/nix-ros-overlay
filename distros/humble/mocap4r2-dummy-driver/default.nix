
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, mocap4r2-control, mocap4r2-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-dummy-driver";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_dummy_driver/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "a9c4206de6442c0049f75a94aefebf6df47e8580248c195606f50743beafc89c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mocap4r2-control mocap4r2-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This is a MOCAP4ROS2 Dummy driver for testing.";
    license = with lib.licenses; [ asl20 ];
  };
}
