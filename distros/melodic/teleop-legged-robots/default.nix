
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-teleop-legged-robots";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/SoftServeSAG/teleop_legged_robots-release/archive/release/melodic/teleop_legged_robots/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d0d4bd1d18469d4fc4b1f0c09d132aef28ba7d17e164040cd567d1c68381b686";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for legged robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
