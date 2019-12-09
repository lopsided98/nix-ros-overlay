
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-srvs, catkin, rospy, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-look-at-pose";
  version = "0.7.7";

  src = fetchurl {
    url = "https://github.com/UTNuclearRoboticsPublic/look_at_pose-release/archive/release/kinetic/look_at_pose/0.7.7-0.tar.gz";
    name = "0.7.7-0.tar.gz";
    sha256 = "7a251c8cc43731f47d2a5f4b9b8961523a77d88a0f183a7aaa5ca935227636af";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-srvs rospy roscpp message-generation ];
  propagatedBuildInputs = [ geometry-msgs std-srvs rospy roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rotate camera to look at a given pose.'';
    license = with lib.licenses; [ "see license.txt" ];
  };
}
