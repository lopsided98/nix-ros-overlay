
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, trac-ik-lib, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-lunar-trac-ik-kinematics-plugin";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/traclabs/trac_ik-release/archive/release/lunar/trac_ik_kinematics_plugin/1.5.0-0.tar.gz;
    sha256 = "e342c86173ad672cfe551332549da89cacc1de362d5d79fb5a6e2d29b027cf07";
  };

  buildInputs = [ pluginlib trac-ik-lib moveit-core tf-conversions roscpp ];
  propagatedBuildInputs = [ pluginlib trac-ik-lib moveit-core tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A MoveIt! Kinematics plugin using TRAC-IK'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
