
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, ament-cmake, andino-description, andino-slam, nav2-bringup, nav2-common, ros-gz-bridge, ros-gz-sim, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-andino-gz";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino_gz-release/archive/release/humble/andino_gz/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "43daa2bdf606d9ef0a65fc454720576e8790bed25c05f2e4f5c4340e566afdd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 andino-description andino-slam nav2-bringup nav2-common ros-gz-bridge ros-gz-sim ros2launch rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch Gazebo simulation with andino robot.";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
