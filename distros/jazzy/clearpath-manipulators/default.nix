
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, gripper-controllers, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-warehouse, moveit-setup-srdf-plugins, moveit-simple-controller-manager, position-controllers, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-manipulators";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_manipulators/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "da1a6beccc52a87599cbaf3371d1aeb5707c4ff1e14cac417f533d1d703b91c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-manipulators-description gripper-controllers moveit-configs-utils moveit-kinematics moveit-planners moveit-planners-chomp moveit-ros-move-group moveit-ros-warehouse moveit-setup-srdf-plugins moveit-simple-controller-manager position-controllers tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MoveIt configuration built around Clearpath Configuration";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
