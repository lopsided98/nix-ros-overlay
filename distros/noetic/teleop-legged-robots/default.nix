
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-teleop-legged-robots";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/SoftServeSAG/teleop_legged_robots-release/archive/release/noetic/teleop_legged_robots/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5bd9db60ca32e7370d7fcb2e7d12569d3aa9a2c85cd378c3e4130d21cfbfcb1f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for legged robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
