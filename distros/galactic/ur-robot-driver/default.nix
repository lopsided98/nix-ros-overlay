
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, launch-testing-ament-cmake, pluginlib, rclcpp, rclpy, std-msgs, std-srvs, tf2-geometry-msgs, ur-bringup, ur-client-library, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs }:
buildRosPackage {
  pname = "ros-galactic-ur-robot-driver";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/ur_robot_driver/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "0a0cc3540912ba0dfe3f6fae0864ba2e29ed2158b9642f532765dec0fd8a6792";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs geometry-msgs hardware-interface launch-testing-ament-cmake pluginlib rclcpp rclpy std-msgs std-srvs tf2-geometry-msgs ur-bringup ur-client-library ur-controllers ur-dashboard-msgs ur-description ur-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 controllers and the e-series.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
