
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, force-torque-sensor-broadcaster, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, position-controllers, rclpy, robot-state-publisher, ros2-controllers-test-nodes, rviz2, ur-controllers, ur-description, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-ur-bringup";
  version = "2.2.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "Universal_Robots_ROS2_Driver-release";
        rev = "release/humble/ur_bringup/2.2.6-1";
        sha256 = "sha256-KP0OKseEWwnfj5o0zoi7vyI6jAuIq2dEa6w+m20fxH0=";
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
