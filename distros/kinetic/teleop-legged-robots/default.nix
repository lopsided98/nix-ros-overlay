
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-teleop-legged-robots";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/SoftServeSAG/teleop_legged_robots-release/archive/release/kinetic/teleop_legged_robots/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d0bf702437a144dc8c8143c17dd35d5851d26453766ee047909867acbbb7817a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for legged robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
