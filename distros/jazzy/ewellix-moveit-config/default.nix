
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-simple-controller-manager, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-moveit-config";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_moveit_config/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "a8f3a0e51357ce6dcb849b5cf32b47ad6c839b1a2e5cebacc56017af7b5c0582";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ewellix-description joint-state-publisher joint-state-publisher-gui moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-simple-controller-manager tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the ewellix_lift with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
