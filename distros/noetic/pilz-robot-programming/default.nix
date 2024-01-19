
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, moveit-commander, pilz-industrial-motion-planner, pilz-industrial-motion-testutils, pilz-msgs, prbt-hardware-support, prbt-moveit-config, prbt-pg70-support, python3Packages, roslint, rospy, rostest, rosunit, tf-conversions, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pilz-robot-programming";
  version = "0.5.0-r4";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/noetic/pilz_robot_programming/0.5.0-4.tar.gz";
    name = "0.5.0-4.tar.gz";
    sha256 = "4b094349fefd046eb81afc7c233cd56e763c5a7ba91bc13fcead1bf7bf598d62";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ code-coverage pilz-industrial-motion-testutils prbt-hardware-support prbt-moveit-config prbt-pg70-support python3Packages.coverage python3Packages.docopt python3Packages.mock rostest rosunit ];
  propagatedBuildInputs = [ moveit-commander pilz-industrial-motion-planner pilz-msgs python3Packages.psutil rospy tf-conversions tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
