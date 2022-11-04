
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, boost, controller-interface, diagnostic-msgs, diagnostic-updater, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, realtime-tools, robot-state-publisher, ros2-control, xacro }:
buildRosPackage {
  pname = "ros-foxy-dynamixel-hardware-interface";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/dynamixel_hardware_interface-release/archive/release/foxy/dynamixel_hardware_interface/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "a835274fbe7593d11dcafda4d68104ee0c7d290fb6d911f35df0196b7ee6bb49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-flake8 ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ boost controller-interface diagnostic-msgs diagnostic-updater dynamixel-sdk hardware-interface pluginlib rclcpp realtime-tools robot-state-publisher ros2-control xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Hardware Interface and controllers for dynamixel motors'';
    license = with lib.licenses; [ asl20 ];
  };
}
