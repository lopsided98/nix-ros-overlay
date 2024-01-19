
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, gazebo-ros2-control, gripper-controllers, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, kortex-driver, launch, launch-ros, rclpy, robotiq-description, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kortex-bringup";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_bringup/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "3412c424e8723353791ab5acfa51d845a313ed27c0ec45abaf5750404bba1e50";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ controller-manager gazebo-ros2-control gripper-controllers joint-state-broadcaster joint-state-publisher joint-trajectory-controller kortex-description kortex-driver launch launch-ros rclpy robotiq-description rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Launch file and run-time configurations, e.g. controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
