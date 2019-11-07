
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, prbt-moveit-config, catkin, pythonPackages, pilz-msgs, prbt-pg70-support, rostest, pilz-industrial-motion-testutils, moveit-commander, rospy, tf-conversions, tf, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-kinetic-pilz-robot-programming";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_robot_programming/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "76ee0c89a89b5d782dd825c9dbc3367fc8dc3b7fbf5afedfda01558b3bcfdf61";
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
