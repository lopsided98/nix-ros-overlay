
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-ros, mujoco-ros2-control, omni-base-description, pal-pro-gripper-description, pal-urdf-utils, play-motion2-msgs, tiago-pro-bringup, tiago-pro-description, tiago-pro-head-description, tiago-pro-laser-sensors, tiago-pro-moveit-config }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-mujoco";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_mujoco/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "6bd30ed062c7c75b10ffaae6e2831cb3d39d8e920ff5cabf28010f697372c4c7";
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
