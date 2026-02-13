
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gz-sensors6, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, gz-ros2-control, launch-pal, nav2-bringup, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, pmb2-2dnav, pmb2-bringup, pmb2-description, pmb2-laser-sensors, pmb2-rgbd-sensors, ros-gz-bridge, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-gazebo";
  version = "4.11.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-release/archive/release/humble/pmb2_gazebo/4.11.1-1.tar.gz";
    name = "4.11.1-1.tar.gz";
    sha256 = "277ec96e4c2edb7b7ff4fd09e2860013de574b052f4edf6a533193aa8da2d954";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gz-sensors6 gazebo-plugins gazebo-ros gazebo-ros2-control gz-ros2-control launch-pal nav2-bringup pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils pmb2-2dnav pmb2-bringup pmb2-description pmb2-laser-sensors pmb2-rgbd-sensors ros-gz-bridge ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Simulation files for the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
