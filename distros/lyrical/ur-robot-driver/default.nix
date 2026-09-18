
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, backward-ros, control-msgs, controller-manager, controller-manager-msgs, force-torque-sensor-broadcaster, forward-command-controller, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, motion-primitives-controllers, pluginlib, pose-broadcaster, rclcpp, rclcpp-action, rclcpp-lifecycle, rclpy, robot-state-publisher, ros2-controllers-test-nodes, ros2run, rviz2, socat, std-msgs, std-srvs, tf2-geometry-msgs, ur-client-library, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ur-robot-driver";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_robot_driver/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "a9d3ebae5c696062a1c0555a3567ee80bb9f2a109aa303d0ec0de6a163982692";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ launch-testing-ament-cmake ros2run ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-manager controller-manager-msgs force-torque-sensor-broadcaster forward-command-controller geometry-msgs hardware-interface joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros motion-primitives-controllers pluginlib pose-broadcaster rclcpp rclcpp-action rclcpp-lifecycle rclpy robot-state-publisher ros2-controllers-test-nodes rviz2 socat std-msgs std-srvs tf2-geometry-msgs ur-client-library ur-controllers ur-dashboard-msgs ur-description ur-msgs urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The ROS 2 driver for Universal Robots manipulators. This driver supports all robot
      models as listed in the documentation. For robot controllers, PolyScope X, PolyScope 5 and
      CB3 controllers are supported.";
    license = with lib.licenses; [ bsd3 ];
  };
}
