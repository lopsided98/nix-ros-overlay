
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, pilz-industrial-motion-testutils, moveit-commander, tf, catkin, pythonPackages, rosunit, roslint, pilz-trajectory-generation, rospy, prbt-moveit-config, tf-conversions, prbt-pg70-support, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-robot-programming";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_robot_programming/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "8e62a064d692627092b97d2d2c6ccb735468197d97a881df6542b6a2e75ce8a5";
  };

  buildType = "catkin";
  buildInputs = [ rospy roslint ];
  checkInputs = [ rostest pilz-industrial-motion-testutils pythonPackages.mock pythonPackages.coverage rosunit prbt-moveit-config prbt-pg70-support pythonPackages.docopt ];
  propagatedBuildInputs = [ moveit-commander tf pilz-trajectory-generation rospy pythonPackages.psutil tf-conversions pilz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
