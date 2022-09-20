
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-lifecycle, rclpy, std-msgs, std-srvs, ur-bringup, ur-client-library, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs }:
buildRosPackage {
  pname = "ros-foxy-ur-robot-driver";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_robot_driver/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "41eaa6477f3c1c3e709b144f5f4febe3cc5a5c5c669d91fb55109b6ebfbe37f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake rclpy ur-bringup ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle std-msgs std-srvs ur-bringup ur-client-library ur-controllers ur-dashboard-msgs ur-description ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 controllers and the e-series.'';
    license = with lib.licenses; [ asl20 ];
  };
}
