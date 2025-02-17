
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, controller-manager, franka-description, franka-gripper, franka-hardware, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-franka-fr3-moveit-config";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_fr3_moveit_config/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "43863ed725e03798d9ca723b628799876dec3f61e7d8e6fa2c800e979b6aa1cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager franka-description franka-gripper franka-hardware joint-state-broadcaster joint-state-publisher joint-trajectory-controller moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains Moveit2 configuration files for Franka Robotics research robots";
    license = with lib.licenses; [ asl20 ];
  };
}
