
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, prbt-moveit-config, prbt-pg70-support, pythonPackages, catkin, pilz-msgs, rostest, pilz-industrial-motion-testutils, moveit-commander, rospy, tf, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-kinetic-pilz-robot-programming";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_robot_programming/0.3.6-0.tar.gz;
    sha256 = "2284296981b16a72c626703a586b25418fef5b667ffba4b4aa0bcc7749ca5829";
  };

  buildInputs = [ roslint rospy ];
  checkInputs = [ prbt-moveit-config prbt-pg70-support rostest pilz-industrial-motion-testutils pythonPackages.coverage pythonPackages.docopt ];
  propagatedBuildInputs = [ pythonPackages.psutil pilz-msgs moveit-commander rospy tf pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
