
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, force-torque-sensor-broadcaster, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, position-controllers, rclpy, robot-state-publisher, ros2-controllers-test-nodes, rviz2, ur-controllers, ur-description, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-rolling-ur-bringup";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur_bringup/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "5daafaf7c8ac07236a9346b24b993c0594e0dfce8c477a499a5175a586d0969b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ controller-manager force-torque-sensor-broadcaster joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros position-controllers rclpy robot-state-publisher ros2-controllers-test-nodes rviz2 ur-controllers ur-description urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Launch file and run-time configurations, e.g. controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
