
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, launch-testing-ament-cmake, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, play-motion2-msgs, rclcpp, sensor-msgs, tiago-2dnav, tiago-bringup, tiago-description, tiago-laser-sensors, tiago-moveit-config }:
buildRosPackage {
  pname = "ros-humble-tiago-gazebo";
  version = "4.7.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_gazebo/4.7.0-1.tar.gz";
    name = "4.7.0-1.tar.gz";
    sha256 = "a87003088a22f22c83552e071fd0ba77787ca8f9bf8e55b2921122ce9afcfd5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake play-motion2-msgs rclcpp sensor-msgs ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch launch-pal launch-ros omni-base-description pal-gazebo-plugins pal-gazebo-worlds pal-maps play-motion2-msgs tiago-2dnav tiago-bringup tiago-description tiago-laser-sensors tiago-moveit-config ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
