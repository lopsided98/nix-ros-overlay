
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, canopen-interfaces, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-canopen-core";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen_core/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "c60decdfb299ff813894d35c83c1287c21306cc3a290b52755396f066f05eaa3";
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
