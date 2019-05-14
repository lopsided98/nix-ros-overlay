
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-gazebo, mir-dwb-critics, mir-description, mir-actions, mir-navigation, mir-driver, mir-msgs }:
buildRosPackage {
  pname = "ros-lunar-mir-robot";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_robot/1.0.4-1.tar.gz;
    sha256 = "860c3625e9f541ffce33686668ffc1efb5f72cf29c98474f4b7c911de2b0c488";
  };

  propagatedBuildInputs = [ mir-description mir-gazebo mir-dwb-critics mir-actions mir-navigation mir-driver mir-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
