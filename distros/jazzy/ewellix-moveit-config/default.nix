
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-simple-controller-manager, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-moveit-config";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_moveit_config/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "c57fde6a525f6e609b618691c3da10fea9445cb82c99814a86c2ed682d24446d";
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
