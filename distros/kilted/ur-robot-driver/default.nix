
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, backward-ros, control-msgs, controller-manager, controller-manager-msgs, effort-controllers, force-torque-sensor-broadcaster, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, motion-primitives-controllers, pluginlib, pose-broadcaster, position-controllers, rclcpp, rclcpp-lifecycle, rclpy, robot-state-publisher, ros2-controllers-test-nodes, rviz2, socat, std-msgs, std-srvs, tf2-geometry-msgs, ur-client-library, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-kilted-ur-robot-driver";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/kilted/ur_robot_driver/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "7668a4c6debfc4eea07857394c34e64bc6e8098d0ddfd75c43db29f3d8c86a7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ launch-testing-ament-cmake ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-manager controller-manager-msgs effort-controllers force-torque-sensor-broadcaster geometry-msgs hardware-interface joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros motion-primitives-controllers pluginlib pose-broadcaster position-controllers rclcpp rclcpp-lifecycle rclpy robot-state-publisher ros2-controllers-test-nodes rviz2 socat std-msgs std-srvs tf2-geometry-msgs ur-client-library ur-controllers ur-dashboard-msgs ur-description ur-msgs urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The ROS 2 driver for Universal Robots manipulators. This driver supports all robot
      models as listed in the documentation. For robot controllers, PolyScope X, PolyScope 5 and
      CB3 controllers are supported.";
    license = with lib.licenses; [ bsd3 ];
  };
}
