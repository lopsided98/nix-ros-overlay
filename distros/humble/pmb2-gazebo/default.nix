
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gz-sensors6, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, gz-ros2-control, launch-pal, nav2-bringup, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, pmb2-2dnav, pmb2-bringup, pmb2-description, pmb2-laser-sensors, pmb2-rgbd-sensors, ros-gz-bridge, ros-gz-sim, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-gazebo";
  version = "4.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_simulation-release/archive/release/humble/pmb2_gazebo/4.14.0-1.tar.gz";
    name = "4.14.0-1.tar.gz";
    sha256 = "8f91b2648bb7e74c836e76b1e9867c83e4dbe4e29481ef40a20728dbacd1b2ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gz-sensors6 gazebo-plugins gazebo-ros gazebo-ros2-control gz-ros2-control launch-pal nav2-bringup pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils pmb2-2dnav pmb2-bringup pmb2-description pmb2-laser-sensors pmb2-rgbd-sensors ros-gz-bridge ros-gz-sim ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Simulation files for the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
