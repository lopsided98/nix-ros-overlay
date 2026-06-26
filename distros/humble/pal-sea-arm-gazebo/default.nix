
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gz-sensors6, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, gz-ros2-control, launch, launch-pal, launch-ros, pal-gazebo-plugins, pal-gazebo-worlds, pal-pro-gripper-description, pal-sea-arm-bringup, pal-sea-arm-description, pal-sea-arm-moveit-config, pal-urdf-utils, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-gazebo";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm_simulation-release/archive/release/humble/pal_sea_arm_gazebo/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "89d379d0bb0cbb0b26d0c8b69e7ef4f185ec0356c7b630c00af8dd2cd40cf701";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gz-sensors6 gazebo-plugins gazebo-ros gazebo-ros2-control gz-ros2-control launch launch-pal launch-ros pal-gazebo-plugins pal-gazebo-worlds pal-pro-gripper-description pal-sea-arm-bringup pal-sea-arm-description pal-sea-arm-moveit-config pal-urdf-utils ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_sea_arm_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
