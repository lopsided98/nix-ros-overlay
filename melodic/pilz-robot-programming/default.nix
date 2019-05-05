
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, prbt-moveit-config, prbt-pg70-support, pythonPackages, catkin, pilz-msgs, rostest, pilz-industrial-motion-testutils, moveit-commander, rospy, tf-conversions, tf, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-melodic-pilz-robot-programming";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_robot_programming/0.4.3-0.tar.gz;
    sha256 = "b753f1fdac939cc51563b027e7c282d1a218977a7ea1c954123696d7fe8dcaf5";
  };

  buildInputs = [ roslint rospy ];
  checkInputs = [ prbt-moveit-config prbt-pg70-support rostest pilz-industrial-motion-testutils pythonPackages.coverage pythonPackages.docopt ];
  propagatedBuildInputs = [ pythonPackages.psutil pilz-msgs moveit-commander rospy tf-conversions tf pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
