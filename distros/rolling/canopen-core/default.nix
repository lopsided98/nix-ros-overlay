
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, canopen-interfaces, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-canopen-core";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_core/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "5462b09f92123730a5f9ff93c25f7851f99a195e9223b2498cc19a640b4f39bb";
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
