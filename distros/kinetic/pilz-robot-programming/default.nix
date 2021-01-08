
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, pilz-industrial-motion-testutils, pilz-msgs, pilz-trajectory-generation, prbt-moveit-config, prbt-pg70-support, pythonPackages, roslint, rospy, rostest, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-pilz-robot-programming";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_robot_programming/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "76ee0c89a89b5d782dd825c9dbc3367fc8dc3b7fbf5afedfda01558b3bcfdf61";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ pilz-industrial-motion-testutils prbt-moveit-config prbt-pg70-support pythonPackages.coverage pythonPackages.docopt pythonPackages.mock rostest ];
  propagatedBuildInputs = [ moveit-commander pilz-msgs pilz-trajectory-generation pythonPackages.psutil rospy tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
