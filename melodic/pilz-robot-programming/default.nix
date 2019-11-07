
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, prbt-moveit-config, catkin, pythonPackages, pilz-msgs, prbt-pg70-support, rostest, pilz-industrial-motion-testutils, moveit-commander, rospy, tf-conversions, tf, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-melodic-pilz-robot-programming";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_robot_programming/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "6f6571ca11129efd57d8035771d53ef9609f51f2f840c4dba2c761be788733dd";
  };

  buildType = "catkin";
  buildInputs = [ roslint rospy ];
  checkInputs = [ prbt-moveit-config prbt-pg70-support rostest pythonPackages.mock pilz-industrial-motion-testutils pythonPackages.coverage pythonPackages.docopt ];
  propagatedBuildInputs = [ pythonPackages.psutil pilz-msgs moveit-commander rospy tf-conversions tf pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
