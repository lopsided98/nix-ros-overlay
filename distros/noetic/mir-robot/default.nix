
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-actions, mir-description, mir-driver, mir-dwb-critics, mir-gazebo, mir-msgs, mir-navigation, sdc21x0 }:
buildRosPackage {
  pname = "ros-noetic-mir-robot";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_robot/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "651cd3d7f7e955fa995864aa2b5bd754796470d2a7f6754837f5db20ba23f77a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mir-actions mir-description mir-driver mir-dwb-critics mir-gazebo mir-msgs mir-navigation sdc21x0 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
