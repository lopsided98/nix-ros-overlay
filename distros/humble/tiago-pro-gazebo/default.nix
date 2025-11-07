
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-pro-gripper-description, pal-urdf-utils, play-motion2-msgs, tiago-pro-2dnav, tiago-pro-bringup, tiago-pro-description, tiago-pro-head-description, tiago-pro-laser-sensors, tiago-pro-moveit-config }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-gazebo";
  version = "1.12.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_gazebo/1.12.2-1.tar.gz";
    name = "1.12.2-1.tar.gz";
    sha256 = "727550f2afb98273f50755d3d082414e8bd1cddcebdc28336d88e2fd341b5402";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch launch-pal launch-ros omni-base-description pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-pro-gripper-description pal-urdf-utils play-motion2-msgs tiago-pro-2dnav tiago-pro-bringup tiago-pro-description tiago-pro-head-description tiago-pro-laser-sensors tiago-pro-moveit-config ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
