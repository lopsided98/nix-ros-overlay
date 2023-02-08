
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, moveit-ros-move-group, moveit-simple-controller-manager, robot-state-publisher, rviz2, ur-controllers, ur-description, ur-moveit-config, urdf, warehouse-ros-mongo, xacro }:
buildRosPackage {
  pname = "ros-foxy-ur-bringup";
  version = "2.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "Universal_Robots_ROS2_Driver-release";
        rev = "release/foxy/ur_bringup/2.0.2-2";
        sha256 = "sha256-6P2WaORWyCJe/Ff/unau9m62bdLxQrBCATFRvL7pop4=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-python controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-ros moveit-ros-move-group moveit-simple-controller-manager robot-state-publisher rviz2 ur-controllers ur-description ur-moveit-config urdf warehouse-ros-mongo xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch file and run-time configurations, e.g. controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
