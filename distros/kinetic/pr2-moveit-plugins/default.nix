
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, control-msgs, eigen-conversions, kdl-parser, moveit-core, pluginlib, pr2-controllers-msgs, pr2-mechanism-msgs, roscpp, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-kinetic-pr2-moveit-plugins";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/kinetic/pr2_moveit_plugins/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "4b0ed81d49c292d841cc281b9d659fed0e855f31bb267cfb068858e62eb54234";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ actionlib angles control-msgs eigen-conversions kdl-parser moveit-core pluginlib pr2-controllers-msgs pr2-mechanism-msgs roscpp tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 specific plugins for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
