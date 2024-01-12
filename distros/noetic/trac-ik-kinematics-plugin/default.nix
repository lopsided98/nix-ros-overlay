
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, nlopt, pluginlib, roscpp, tf-conversions, trac-ik-lib }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-kinematics-plugin";
  version = "1.6.6-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_kinematics_plugin/1.6.6-1.tar.gz";
    name = "1.6.6-1.tar.gz";
    sha256 = "5edc36fd48484fee5af8fc5d54a089505d17d1dbd9e20cbfbaa76a62afbf22f1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core nlopt pluginlib roscpp tf-conversions trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A MoveIt! Kinematics plugin using TRAC-IK'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
