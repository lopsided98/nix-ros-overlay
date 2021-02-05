
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-teleop-legged-robots";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/SoftServeSAG/teleop_legged_robots-release/archive/release/kinetic/teleop_legged_robots/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "26f09afe12f13ab01dadee1d3f95f51b7178dd8306b2862280a07b9b7e2d1444";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for legged robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
