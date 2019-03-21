
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-teleop";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_teleop/1.2.0-0.tar.gz;
    sha256 = "6ab2e5e87cbe80820499a9c9a9b056b9e1f03630246ab334903251ae02a825bb";
  };

  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin geometry-msgs rospy ];

  meta = {
    description = ''Provides teleoperation using keyboard for TurtleBot3.'';
    #license = lib.licenses.BSD;
  };
}
