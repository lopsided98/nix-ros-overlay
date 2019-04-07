
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, prbt-moveit-config, tf, prbt-pg70-support, pythonPackages, catkin, rostest, pilz-industrial-motion-testutils, moveit-commander, rospy, tf-conversions, pilz-msgs, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-melodic-pilz-robot-programming";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_robot_programming/0.4.2-0.tar.gz;
    sha256 = "20e7ecd7da757de097a42fdeebbd98ccfb92b891297ce982a104250d66d7573b";
  };

  buildInputs = [ roslint rospy ];
  checkInputs = [ rostest pilz-industrial-motion-testutils pythonPackages.coverage prbt-moveit-config pythonPackages.docopt prbt-pg70-support ];
  propagatedBuildInputs = [ pythonPackages.psutil moveit-commander tf-conversions rospy tf pilz-msgs pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    #license = lib.licenses.LGPLv3;
  };
}
