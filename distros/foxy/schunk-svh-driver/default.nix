
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, controller-manager, hardware-interface, joint-state-controller, joint-trajectory-controller, launch, launch-ros, pluginlib, rclcpp, ros2launch, schunk-svh-description, schunk-svh-library, xacro }:
buildRosPackage {
  pname = "ros-foxy-schunk-svh-driver";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/foxy/schunk_svh_driver/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "9845845770a67ca540719f5884cfb53d221e38b9d9ac10285404c9ad06aaa416";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller launch launch-ros pluginlib rclcpp ros2launch schunk-svh-description schunk-svh-library xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2-control system interface for the Schunk SVH'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
