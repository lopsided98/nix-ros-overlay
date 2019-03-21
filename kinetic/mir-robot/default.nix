
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-gazebo, mir-description, mir-dwb-critics, mir-actions, mir-driver, mir-navigation, mir-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mir-robot";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_robot/1.0.3-0.tar.gz;
    sha256 = "3817e53c0800ef79af5383c43e001a1cf7be0a47816ac5a5b16abcb22277b64e";
  };

  propagatedBuildInputs = [ mir-actions mir-driver mir-navigation mir-description mir-dwb-critics mir-gazebo mir-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    #license = lib.licenses.BSD;
  };
}
