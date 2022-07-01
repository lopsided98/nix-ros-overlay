
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, ros2-controllers, ros2controlcli, xacro }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-control";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/crane_plus-release/archive/release/foxy/crane_plus_control/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "1f5882cc2e87191c137c572e1f1bb1bf9d73364c4fc7ad64f1ee56bcd48606f1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager crane-plus-description dynamixel-sdk hardware-interface pluginlib rclcpp ros2-controllers ros2controlcli xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+V2 control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
