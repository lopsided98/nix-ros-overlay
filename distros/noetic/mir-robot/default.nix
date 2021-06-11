
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-actions, mir-description, mir-driver, mir-dwb-critics, mir-gazebo, mir-msgs, mir-navigation, sdc21x0 }:
buildRosPackage {
  pname = "ros-noetic-mir-robot";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_robot/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "9525562dc4ede00dc75bfc21fd610f3724d445da2701f5ecb55f6a3946cfbf3b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mir-actions mir-description mir-driver mir-dwb-critics mir-gazebo mir-msgs mir-navigation sdc21x0 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
