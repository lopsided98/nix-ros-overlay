
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, canopen-interfaces, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-canopen-core";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_core/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "4a498aa6d44cd001d1daaa55d1dcda920475af9e51b55d40cad118787ab39aa7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-interfaces lely-core-libraries lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Core ros2_canopen functionalities such as DeviceContainer and master'';
    license = with lib.licenses; [ asl20 ];
  };
}
