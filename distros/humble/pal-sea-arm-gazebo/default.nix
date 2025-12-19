
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, pal-gazebo-plugins, pal-gazebo-worlds, pal-pro-gripper-description, pal-sea-arm-bringup, pal-sea-arm-description, pal-sea-arm-moveit-config, pal-urdf-utils }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-gazebo";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm_simulation-release/archive/release/humble/pal_sea_arm_gazebo/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "0b47fb125683e6eb6ebd7167323fab8e29ce0c317888a59c8af3a0f9ec654c4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch launch-pal launch-ros pal-gazebo-plugins pal-gazebo-worlds pal-pro-gripper-description pal-sea-arm-bringup pal-sea-arm-description pal-sea-arm-moveit-config pal-urdf-utils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_sea_arm_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
