
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, boost, catkin, moveit-kinematics, moveit-core, tf-conversions, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ur-kinematics";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_kinematics/1.2.1-0.tar.gz;
    sha256 = "90b9500a5883d97e4d30b38dbf64757042dcb1b1847cfeaf59924c0c6b2aeeff";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-core pluginlib boost tf-conversions geometry-msgs moveit-kinematics roscpp ];
  nativeBuildInputs = [ moveit-ros-planning pluginlib boost moveit-kinematics catkin moveit-core tf-conversions roscpp geometry-msgs ];

  meta = {
    description = ''Provides forward and inverse kinematics for Universal Robots designs.
     See http://hdl.handle.net/1853/50782 for details.'';
    #license = lib.licenses.BSD;
  };
}
