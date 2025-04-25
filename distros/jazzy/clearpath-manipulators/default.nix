
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, gripper-controllers, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-warehouse, moveit-simple-controller-manager, position-controllers, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-manipulators";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_manipulators/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "e300e59a4f4651e39b961b93a349834bfef0917bf1152495e91055d196912e1f";
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
