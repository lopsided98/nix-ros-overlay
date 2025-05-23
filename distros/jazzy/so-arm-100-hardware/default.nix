
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-so-arm-100-hardware";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/brukg/so_arm_100_hardware-release/archive/release/jazzy/so_arm_100_hardware/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "d10d6c687d1bc6019d631098affabd04764e4148187edb5e17b4d74370aab6e0";
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
