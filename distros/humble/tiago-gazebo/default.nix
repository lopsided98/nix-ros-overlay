
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gz-sensors6, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, gz-ros2-control, launch, launch-pal, launch-ros, launch-testing-ament-cmake, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, play-motion2-msgs, rclcpp, ros-gz-bridge, sensor-msgs, tiago-2dnav, tiago-bringup, tiago-description, tiago-laser-sensors, tiago-moveit-config, tiago-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-gazebo";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_simulation-release/archive/release/humble/tiago_gazebo/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "35d8766c1a797bcbc7c01a8c17bc5faf7b36db5bb72dc7071b1c4a9f376dfec1";
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
