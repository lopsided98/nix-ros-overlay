
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-teleop";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_teleop/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "8e88e74b4271e2622649ea8c30be4dbdad86694c385ab02be2354fbb69edde33";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
