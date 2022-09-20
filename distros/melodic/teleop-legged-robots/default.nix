
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-teleop-legged-robots";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SoftServeSAG/teleop_legged_robots-release/archive/release/melodic/teleop_legged_robots/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "a6f0d0e043ddf4d8b8f93bc394b341780c3439ddf09da38555b1c9a4acb62662";
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
