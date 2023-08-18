
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, launch-testing-ament-cmake, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-joint-limits";
  version = "2.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/joint_limits/2.30.0-1.tar.gz";
    name = "2.30.0-1.tar.gz";
    sha256 = "85d136bf02cf8db2e87a2850f79ec7a0abb4b45ad964684a8fe06a886dc8082d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest launch-testing-ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces for handling of joint limits for controllers or hardware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
