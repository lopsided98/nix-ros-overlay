
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, controller-manager, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, pluginlib, rclcpp, ros2launch, schunk-svh-description, schunk-svh-library, xacro }:
buildRosPackage {
  pname = "ros-humble-schunk-svh-driver";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/humble/schunk_svh_driver/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "269f5a13f886de298c2eb0e47ae92e278cded813d33c707d908cb55324b25370";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-broadcaster joint-trajectory-controller launch launch-ros pluginlib rclcpp ros2launch schunk-svh-description schunk-svh-library xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2-control system interface for the Schunk SVH'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
