
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-simple-controller-manager, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-ewellix-moveit-config";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/humble/ewellix_moveit_config/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "64cf8cbe9a5e2d048ec94df50acd990d4286dfe43b67d9eaf205f498ed84d29a";
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
