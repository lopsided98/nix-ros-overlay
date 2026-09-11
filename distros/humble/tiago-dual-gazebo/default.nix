
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gz-sensors6, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, gz-ros2-control, launch, launch-pal, launch-ros, launch-testing-ament-cmake, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, play-motion2-msgs, rclcpp, ros-gz-bridge, sensor-msgs, tiago-dual-2dnav, tiago-dual-bringup, tiago-dual-description, tiago-dual-laser-sensors, tiago-dual-moveit-config, tiago-dual-rgbd-sensors, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-gazebo";
  version = "4.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_simulation-release/archive/release/humble/tiago_dual_gazebo/4.14.0-1.tar.gz";
    name = "4.14.0-1.tar.gz";
    sha256 = "c0a984af332f9644ff231ae22aee2d3e09d59bb6885c38470a3a3562548c2567";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake play-motion2-msgs rclcpp sensor-msgs ];
  propagatedBuildInputs = [ _unresolved_gz-sensors6 gazebo-plugins gazebo-ros gazebo-ros2-control gz-ros2-control launch launch-pal launch-ros pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils play-motion2-msgs ros-gz-bridge tiago-dual-2dnav tiago-dual-bringup tiago-dual-description tiago-dual-laser-sensors tiago-dual-moveit-config tiago-dual-rgbd-sensors tiago-gazebo ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_dual_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
