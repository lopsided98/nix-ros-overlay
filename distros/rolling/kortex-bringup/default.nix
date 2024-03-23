
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, gazebo-ros2-control, gripper-controllers, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, kortex-driver, launch, launch-ros, rclpy, robotiq-description, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-kortex-bringup";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_bringup/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "dfbc946d72a2469eafa5221c6003f26e58afb329a6b6c7c33f526928c49a1506";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ controller-manager gazebo-ros2-control gripper-controllers joint-state-broadcaster joint-state-publisher joint-trajectory-controller kortex-description kortex-driver launch launch-ros rclpy robotiq-description rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Launch file and run-time configurations, e.g. controllers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
