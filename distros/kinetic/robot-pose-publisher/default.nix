
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-robot-pose-publisher";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/robot_pose_publisher-release/archive/release/kinetic/robot_pose_publisher/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "f9d05e9dcd841a192caf488678928ffda8553134d3d7335fc2a3a05ee52b7b9e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Simple Node to Publish the Robot's Position Relative to the Map using TFs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
