
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, force-torque-sensor-broadcaster, joint-state-publisher, launch, launch-ros, rclpy, robot-state-publisher, ros2-controllers-test-nodes, rviz2, ur-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-galactic-ur-bringup";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/ur_bringup/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "39b3ff22e060157bcbeb461225e29c7bd58156cf59c5f105b72a0b579b06faa1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-manager force-torque-sensor-broadcaster joint-state-publisher launch launch-ros rclpy robot-state-publisher ros2-controllers-test-nodes rviz2 ur-description urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Launch file and run-time configurations, e.g. controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
