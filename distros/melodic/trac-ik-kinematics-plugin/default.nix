
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, pluginlib, roscpp, tf-conversions, trac-ik-lib }:
buildRosPackage {
  pname = "ros-melodic-trac-ik-kinematics-plugin";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/melodic/trac_ik_kinematics_plugin/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "f6758d2cd5aa2247de6d995d31051d844a993288e69abb94e13a05f3eb0b0a29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core pluginlib roscpp tf-conversions trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A MoveIt! Kinematics plugin using TRAC-IK'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
