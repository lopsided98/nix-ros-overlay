
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, gripper-controllers, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-warehouse, moveit-simple-controller-manager, position-controllers, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-manipulators";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_manipulators/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "924a9c280e628cbe4851801a4908ef2199069b41d035dbf9319c755d59a72019";
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
