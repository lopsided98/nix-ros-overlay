
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gz-sensors6, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, gz-ros2-control, launch, launch-pal, launch-ros, launch-testing-ament-cmake, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, play-motion2-msgs, rclcpp, ros-gz-bridge, sensor-msgs, tiago-2dnav, tiago-bringup, tiago-description, tiago-laser-sensors, tiago-moveit-config, tiago-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-gazebo";
  version = "4.10.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_gazebo/4.10.1-1.tar.gz";
    name = "4.10.1-1.tar.gz";
    sha256 = "761435b42817a6d9b00cdec0985df9d75e6695f529114846a63bc76bb193765a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake play-motion2-msgs rclcpp sensor-msgs ];
  propagatedBuildInputs = [ _unresolved_gz-sensors6 gazebo-plugins gazebo-ros gazebo-ros2-control gz-ros2-control launch launch-pal launch-ros omni-base-description pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils play-motion2-msgs ros-gz-bridge tiago-2dnav tiago-bringup tiago-description tiago-laser-sensors tiago-moveit-config tiago-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
