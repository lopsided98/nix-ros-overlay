
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, trac-ik-lib, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-melodic-trac-ik-kinematics-plugin";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/melodic/trac_ik_kinematics_plugin/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "9ac973d39470f1f0648e6e01cdd11b7207d61f3482bf7a4c302e43b7ae53896f";
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
