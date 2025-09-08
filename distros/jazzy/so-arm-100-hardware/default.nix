
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-so-arm-100-hardware";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/brukg/so_arm_100_hardware-release/archive/release/jazzy/so_arm_100_hardware/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a105a92bcddfab24e50151981063608a5bb9ef81fa282b24925f64f31aa7ca55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface pluginlib rclcpp rclcpp-lifecycle std-msgs std-srvs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Control Hardware Interface for SOARM-100 low-cost 5DoF robotic manipulator.";
    license = with lib.licenses; [ asl20 ];
  };
}
