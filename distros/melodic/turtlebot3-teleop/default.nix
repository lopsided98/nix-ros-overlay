
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-teleop";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_teleop/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "7eaab5159344f9de40e735bd4fbec6c287dba5e90848b5e9eaf7a65bd5696901";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
