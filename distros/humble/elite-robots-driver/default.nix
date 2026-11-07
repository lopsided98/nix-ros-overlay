
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, control-msgs, controller-manager, controller-manager-msgs, elite-cs-series-sdk, elite-robots-dashboard-msgs, elite-robots-description, elite-robots-msgs, force-torque-sensor-broadcaster, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, moveit-msgs, pluginlib, position-controllers, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, rclpy, realtime-tools, robot-state-publisher, ros2-control, ros2-controllers, ros2-controllers-test-nodes, rviz2, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-elite-robots-driver";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_driver/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "a8b6f713e149824fbddfae667f2b87ff8a49ec089fad4d66dfafff8f8ec1c407";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces control-msgs controller-manager controller-manager-msgs elite-cs-series-sdk elite-robots-dashboard-msgs elite-robots-description elite-robots-msgs force-torque-sensor-broadcaster geometry-msgs hardware-interface joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros moveit-msgs pluginlib position-controllers rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle rclpy realtime-tools robot-state-publisher ros2-control ros2-controllers ros2-controllers-test-nodes rviz2 sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros trajectory-msgs urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Elite CS series robot ros2 driver";
    license = with lib.licenses; [ asl20 ];
  };
}
