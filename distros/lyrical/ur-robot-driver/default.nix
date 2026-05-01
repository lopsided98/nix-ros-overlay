
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ur_client_library, ament-cmake, ament-cmake-python, backward-ros, control-msgs, controller-manager, controller-manager-msgs, effort-controllers, force-torque-sensor-broadcaster, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, motion-primitives-controllers, pluginlib, pose-broadcaster, position-controllers, rclcpp, rclcpp-lifecycle, rclpy, robot-state-publisher, ros2-controllers-test-nodes, ros2run, rviz2, socat, std-msgs, std-srvs, tf2-geometry-msgs, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ur-robot-driver";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_robot_driver/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "82fcbe30e84ec5c9bea8df57f1731ebeabfb50d86512a724eef1ed779b91a367";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ launch-testing-ament-cmake ros2run ];
  propagatedBuildInputs = [ _unresolved_ur_client_library backward-ros control-msgs controller-manager controller-manager-msgs effort-controllers force-torque-sensor-broadcaster geometry-msgs hardware-interface joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros motion-primitives-controllers pluginlib pose-broadcaster position-controllers rclcpp rclcpp-lifecycle rclpy robot-state-publisher ros2-controllers-test-nodes rviz2 socat std-msgs std-srvs tf2-geometry-msgs ur-controllers ur-dashboard-msgs ur-description ur-msgs urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The ROS 2 driver for Universal Robots manipulators. This driver supports all robot
      models as listed in the documentation. For robot controllers, PolyScope X, PolyScope 5 and
      CB3 controllers are supported.";
    license = with lib.licenses; [ bsd3 ];
  };
}
