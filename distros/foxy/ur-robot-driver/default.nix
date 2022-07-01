
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-lifecycle, rclpy, std-msgs, std-srvs, ur-bringup, ur-client-library, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs }:
buildRosPackage {
  pname = "ros-foxy-ur-robot-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_robot_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ef2983d39583f206c6c2ecede5dab1b71da7a78d62f3cdaab8f6571cd7255a26";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch-testing-ament-cmake rclpy ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle std-msgs std-srvs ur-bringup ur-client-library ur-controllers ur-dashboard-msgs ur-description ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 controllers and the e-series.'';
    license = with lib.licenses; [ asl20 ];
  };
}
