
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, nav2-bringup, omni-base-2dnav, omni-base-bringup, omni-base-description, omni-base-laser-sensors, omni-base-rgbd-sensors, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, ros-gz-bridge, ros-gz-sim, ros2launch }:
buildRosPackage {
  pname = "ros-humble-omni-base-gazebo";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_simulation-release/archive/release/humble/omni_base_gazebo/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "2cd069658817509ed4ec74086d1d93b32a44398062b691094f4d27945413c03b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal nav2-bringup omni-base-2dnav omni-base-bringup omni-base-description omni-base-laser-sensors omni-base-rgbd-sensors pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils ros-gz-bridge ros-gz-sim ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
