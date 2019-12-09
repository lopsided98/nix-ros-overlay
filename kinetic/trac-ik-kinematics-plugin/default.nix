
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, pluginlib, catkin, trac-ik-lib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-kinematics-plugin";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_kinematics_plugin/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "2709409f125d89e56436688df7ab5787fc3f4f1c564c722bb931f404c968fcf2";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core pluginlib trac-ik-lib roscpp tf-conversions ];
  propagatedBuildInputs = [ moveit-core pluginlib trac-ik-lib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A MoveIt! Kinematics plugin using TRAC-IK'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
