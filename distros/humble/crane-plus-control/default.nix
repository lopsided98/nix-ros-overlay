
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, ros2-controllers, ros2controlcli, xacro }:
buildRosPackage {
  pname = "ros-humble-crane-plus-control";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus_control/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "cf303ed0624aac9f90f576f010a49edd3401ce4d99dc9fc62294b1b6548bb06a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager crane-plus-description dynamixel-sdk hardware-interface pluginlib rclcpp ros2-controllers ros2controlcli xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
