
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-gazebo, mir-description, mir-dwb-critics, mir-actions, mir-driver, mir-navigation, mir-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-robot";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_robot/1.0.3-0.tar.gz;
    sha256 = "3037700c38b063bebea35ba8506ede308e9115ac5487946af9c30b604e23b1db";
  };

  propagatedBuildInputs = [ mir-actions mir-driver mir-navigation mir-description mir-dwb-critics mir-gazebo mir-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    #license = lib.licenses.BSD;
  };
}
