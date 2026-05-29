
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, canopen-core, canopen-interfaces, lely-core-libraries, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-canopen-master-driver";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_master_driver/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "34fbce766adc7b3f020967be0b7b67fecf010702d4c19175993107810d55c1d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ canopen-core canopen-interfaces lely-core-libraries rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Basic canopen master implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
