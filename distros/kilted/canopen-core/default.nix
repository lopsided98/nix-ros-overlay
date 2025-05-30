
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, canopen-interfaces, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-canopen-core";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_core/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "bcc8c31e54856b246b1f6d653f2be8f4dfb1668d523dcc2a2fcfe050bb989d03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-interfaces lely-core-libraries lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core ros2_canopen functionalities such as DeviceContainer and master";
    license = with lib.licenses; [ asl20 ];
  };
}
