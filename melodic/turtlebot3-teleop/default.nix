
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, geometry-msgs, catkin }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-teleop";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_teleop/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "01ce2cef1cd4e647d29f0e6395b65078e7cabb623c9283b1b54dbf07581d725e";
  };

  buildType = "catkin";
  buildInputs = [ rospy geometry-msgs ];
  propagatedBuildInputs = [ rospy geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using keyboard for TurtleBot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
