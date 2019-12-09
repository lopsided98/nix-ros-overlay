
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mir-navigation, mir-dwb-critics, mir-actions, mir-driver, catkin, mir-msgs, mir-description, mir-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-mir-robot";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_robot/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "475b342d4a11b35ebdc5def92fec108508f374b3b216bb576c41fc6fb8309012";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mir-navigation mir-dwb-critics mir-actions mir-driver mir-msgs mir-description mir-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
