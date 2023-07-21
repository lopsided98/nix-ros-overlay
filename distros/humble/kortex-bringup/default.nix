
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, gazebo-ros2-control, gripper-controllers, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, launch, launch-ros, rclpy, robotiq-description, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kortex-bringup";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_bringup/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4304a0e8ad5a2493a94d3f141061e3a8a15fa1ad8732a2bc1f74b556e3d12f54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ controller-manager gazebo-ros2-control gripper-controllers joint-state-broadcaster joint-state-publisher joint-trajectory-controller kortex-description launch launch-ros rclpy robotiq-description rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Launch file and run-time configurations, e.g. controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
