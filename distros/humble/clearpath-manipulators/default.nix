
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, gripper-controllers, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-warehouse, moveit-simple-controller-manager, position-controllers, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-manipulators";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_manipulators/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "88d02df5725b43739ab39256e79e388ca3362b72aa80171807b9e0c55085ce32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-manipulators-description gripper-controllers moveit-configs-utils moveit-kinematics moveit-planners moveit-planners-chomp moveit-ros-move-group moveit-ros-warehouse moveit-simple-controller-manager position-controllers tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MoveIt configuration built around Clearpath Configuration";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
