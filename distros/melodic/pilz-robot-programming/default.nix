
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, moveit-commander, pilz-industrial-motion-testutils, pilz-msgs, pilz-trajectory-generation, prbt-hardware-support, prbt-moveit-config, prbt-pg70-support, pythonPackages, roslint, rospy, rostest, rosunit, tf-conversions, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-pilz-robot-programming";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_robot_programming/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "1062a86b989d434525385cab9278543a3144929d2320beae795f546494e2f086";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ code-coverage pilz-industrial-motion-testutils prbt-hardware-support prbt-moveit-config prbt-pg70-support pythonPackages.coverage pythonPackages.docopt pythonPackages.mock rostest rosunit ];
  propagatedBuildInputs = [ moveit-commander pilz-msgs pilz-trajectory-generation pythonPackages.psutil rospy tf-conversions tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
