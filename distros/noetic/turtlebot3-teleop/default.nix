
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-teleop";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/turtlebot3_teleop/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "3b127bd79d3aec3c1c7af84b928755c01711ee80803476605cc3feedcb29c084";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
