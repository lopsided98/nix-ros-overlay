
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, franka-bringup, franka-description, franka-example-controllers, franka-fr3-moveit-config, franka-gazebo-bringup, franka-gripper, franka-hardware, franka-ign-ros2-control, franka-msgs, libfranka }:
buildRosPackage {
  pname = "ros-humble-franka-ros2";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_ros2/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c3f83d5f15a3ba507c73d6f79497eb32c5d81411a9f104a97086eddd342e780e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ franka-bringup franka-description franka-example-controllers franka-fr3-moveit-config franka-gazebo-bringup franka-gripper franka-hardware franka-ign-ros2-control franka-msgs libfranka ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package of franka_ros2";
    license = with lib.licenses; [ asl20 ];
  };
}
