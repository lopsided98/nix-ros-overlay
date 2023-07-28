
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, launch-testing-ament-cmake, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-joint-limits";
  version = "3.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/joint_limits/3.16.0-1.tar.gz";
    name = "3.16.0-1.tar.gz";
    sha256 = "ea5c38f36ab73399ce0a4cdca21a81000f32f1e42306389fcef90c6866bae850";
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
