
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, trac-ik-lib, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-kinematics-plugin";
  version = "1.5.0";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_kinematics_plugin/1.5.0-0.tar.gz";
    name = "1.5.0-0.tar.gz";
    sha256 = "d9546126a9f9a68fae95aa0333164b70e194022d8bc2340e947d615717852adc";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib trac-ik-lib moveit-core tf-conversions roscpp ];
  propagatedBuildInputs = [ pluginlib trac-ik-lib moveit-core tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A MoveIt! Kinematics plugin using TRAC-IK'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
