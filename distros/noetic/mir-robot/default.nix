
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-actions, mir-description, mir-driver, mir-dwb-critics, mir-gazebo, mir-msgs, mir-navigation, sdc21x0 }:
buildRosPackage {
  pname = "ros-noetic-mir-robot";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_robot/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "2be2dfba2a72a16774bb0dbaa0815c08440ff67811238f4dffddb11e129c5dca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mir-actions mir-description mir-driver mir-dwb-critics mir-gazebo mir-msgs mir-navigation sdc21x0 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR robot.";
    license = with lib.licenses; [ bsd3 ];
  };
}
