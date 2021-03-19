
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, pluginlib, roscpp, tf-conversions, trac-ik-lib }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-kinematics-plugin";
  version = "1.6.1-r6";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_kinematics_plugin/1.6.1-6.tar.gz";
    name = "1.6.1-6.tar.gz";
    sha256 = "75a3e0da9b5cc99b5abdedcca241111b48354971b5faeb258f07d18bc56c748d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core pluginlib roscpp tf-conversions trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A MoveIt! Kinematics plugin using TRAC-IK'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
