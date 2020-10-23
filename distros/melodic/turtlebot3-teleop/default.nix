
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-teleop";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_teleop/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "29a0873b66a3b62f17e79465d6f66a539bb77e662c9a3d1c06846d3f2f32b722";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
