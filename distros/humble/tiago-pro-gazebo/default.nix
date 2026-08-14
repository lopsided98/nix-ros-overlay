
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gz-sensors6, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, gz-ros2-control, launch, launch-pal, launch-ros, nav2-bringup, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-pro-gripper-description, pal-urdf-utils, play-motion2-msgs, ros-gz-bridge, ros-gz-sim, tiago-pro-2dnav, tiago-pro-bringup, tiago-pro-description, tiago-pro-head-description, tiago-pro-laser-sensors, tiago-pro-moveit-config, tiago-pro-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-gazebo";
  version = "1.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_gazebo/1.18.0-1.tar.gz";
    name = "1.18.0-1.tar.gz";
    sha256 = "460abe8e0327a1e4339cd2c4ff6ea1bca99eb7c7ef887483c119a62df086ae13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gz-sensors6 gazebo-plugins gazebo-ros gazebo-ros2-control gz-ros2-control launch launch-pal launch-ros nav2-bringup omni-base-description pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-pro-gripper-description pal-urdf-utils play-motion2-msgs ros-gz-bridge ros-gz-sim tiago-pro-2dnav tiago-pro-bringup tiago-pro-description tiago-pro-head-description tiago-pro-laser-sensors tiago-pro-moveit-config tiago-pro-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
