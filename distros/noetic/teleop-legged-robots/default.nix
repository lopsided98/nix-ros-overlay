
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-teleop-legged-robots";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SoftServeSAG/teleop_legged_robots-release/archive/release/noetic/teleop_legged_robots/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "565acd4d3fa25edaffae1697a70179fc2b3e56d89b219dabff45229e42a90d99";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for legged robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
