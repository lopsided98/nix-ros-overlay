
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, canopen-interfaces, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-canopen-core";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_core/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "3b29bcf773018f6810d1314991e673f8710061298d1e92c6d417b74961d13fd7";
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
