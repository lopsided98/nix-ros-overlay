
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, ros2-controllers, ros2controlcli, xacro }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-control";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/foxy/crane_plus_control/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "317a6c7aa29ba9529c777ad3eba9c0790adbc4caf93d8d2b43d6c576ef74c1c5";
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
