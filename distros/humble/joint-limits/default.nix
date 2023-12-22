
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, launch-testing-ament-cmake, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-joint-limits";
  version = "2.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/joint_limits/2.36.0-1.tar.gz";
    name = "2.36.0-1.tar.gz";
    sha256 = "f315cb17316014bc95c17662292e015bec8363ff9ed6c3591affadfe0000f14c";
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
