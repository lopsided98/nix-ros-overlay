
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, boost, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-canopen-402-driver";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_402_driver/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "9d23b5ce4116d3aac6461b0811fcb098a965d4f1fffed35253c9830bc84d1b80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-base-driver canopen-core canopen-interfaces canopen-proxy-driver rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for devices implementing CIA402 profile";
    license = with lib.licenses; [ "LGPL-v3" ];
  };
}
