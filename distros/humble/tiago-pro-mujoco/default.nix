
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-ros, mujoco-ros2-control, omni-base-description, pal-pro-gripper-description, pal-urdf-utils, play-motion2-msgs, tiago-pro-bringup, tiago-pro-description, tiago-pro-head-description, tiago-pro-laser-sensors, tiago-pro-moveit-config }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-mujoco";
  version = "1.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_mujoco/1.19.0-1.tar.gz";
    name = "1.19.0-1.tar.gz";
    sha256 = "afb32183a1a7276641e85aa22ed5e056250726271a91fd8c3469e0acd818f235";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-pal launch-ros mujoco-ros2-control omni-base-description pal-pro-gripper-description pal-urdf-utils play-motion2-msgs tiago-pro-bringup tiago-pro-description tiago-pro-head-description tiago-pro-laser-sensors tiago-pro-moveit-config ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro_mujoco package";
    license = with lib.licenses; [ asl20 ];
  };
}
