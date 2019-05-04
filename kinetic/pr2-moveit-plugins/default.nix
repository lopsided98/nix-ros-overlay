
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, pr2-mechanism-msgs, kdl-parser, pluginlib, control-msgs, cmake-modules, catkin, urdf, moveit-core, actionlib, tf-conversions, angles, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pr2-moveit-plugins";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_pr2-release/archive/release/kinetic/pr2_moveit_plugins/0.7.1-0.tar.gz;
    sha256 = "4b0ed81d49c292d841cc281b9d659fed0e855f31bb267cfb068858e62eb54234";
  };

  buildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs kdl-parser pluginlib cmake-modules control-msgs urdf moveit-core actionlib angles tf-conversions eigen-conversions roscpp ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs kdl-parser pluginlib control-msgs urdf moveit-core actionlib angles tf-conversions eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 specific plugins for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
