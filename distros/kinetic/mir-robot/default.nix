
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-actions, mir-description, mir-driver, mir-dwb-critics, mir-gazebo, mir-msgs, mir-navigation }:
buildRosPackage {
  pname = "ros-kinetic-mir-robot";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_robot/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "3f03ec0a7e1b8a4320a6a554e4921379e981a18e12fa6ed51f7fab57844b237d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mir-actions mir-description mir-driver mir-dwb-critics mir-gazebo mir-msgs mir-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
