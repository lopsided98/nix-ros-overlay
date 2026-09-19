
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, backward-ros, control-msgs, controller-manager, controller-manager-msgs, effort-controllers, force-torque-sensor-broadcaster, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, pluginlib, pose-broadcaster, position-controllers, rclcpp, rclcpp-action, rclcpp-lifecycle, rclpy, realtime-tools, robot-state-publisher, ros2-controllers-test-nodes, ros2run, rviz2, socat, std-msgs, std-srvs, tf2-geometry-msgs, ur-client-library, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-ur-robot-driver";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_robot_driver/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "e9d5df6e14f6f0c18d7884de3b40c8488d631b2261ccfb91e21d9cbe0ca41104";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock launch-testing-ament-cmake ros2run ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-manager controller-manager-msgs effort-controllers force-torque-sensor-broadcaster geometry-msgs hardware-interface joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros pluginlib pose-broadcaster position-controllers rclcpp rclcpp-action rclcpp-lifecycle rclpy realtime-tools robot-state-publisher ros2-controllers-test-nodes rviz2 socat std-msgs std-srvs tf2-geometry-msgs ur-client-library ur-controllers ur-dashboard-msgs ur-description ur-msgs urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 controllers and the e-series.";
    license = with lib.licenses; [ bsd3 ];
  };
}
