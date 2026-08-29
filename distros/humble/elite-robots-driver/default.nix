
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, control-msgs, controller-manager, controller-manager-msgs, elite-cs-series-sdk, elite-robots-dashboard-msgs, elite-robots-description, elite-robots-msgs, force-torque-sensor-broadcaster, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, pluginlib, position-controllers, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, rclpy, realtime-tools, robot-state-publisher, ros2-control, ros2-controllers, ros2-controllers-test-nodes, rviz2, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, trajectory-msgs, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-elite-robots-driver";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_driver/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "28185cc15e9823c5aa94d494fa2bfc15f1ccc004c13c4e5e08d52fd5952d37e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces control-msgs controller-manager controller-manager-msgs elite-cs-series-sdk elite-robots-dashboard-msgs elite-robots-description elite-robots-msgs force-torque-sensor-broadcaster geometry-msgs hardware-interface joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros pluginlib position-controllers rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle rclpy realtime-tools robot-state-publisher ros2-control ros2-controllers ros2-controllers-test-nodes rviz2 sensor-msgs std-msgs std-srvs tf2-geometry-msgs trajectory-msgs urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Elite CS series robot ros2 driver";
    license = with lib.licenses; [ asl20 ];
  };
}
