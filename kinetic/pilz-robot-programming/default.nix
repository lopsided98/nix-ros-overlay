
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, prbt-moveit-config, catkin, pythonPackages, pilz-msgs, prbt-pg70-support, rostest, pilz-industrial-motion-testutils, moveit-commander, rospy, tf-conversions, tf, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-kinetic-pilz-robot-programming";
  version = "0.3.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_robot_programming/0.3.8-0.tar.gz;
    sha256 = "3937d905736a4d05521dbbab8796805712e4ce3f73e3b7d42dd1a88310659122";
  };

  buildInputs = [ roslint rospy ];
  checkInputs = [ prbt-moveit-config prbt-pg70-support rostest pythonPackages.mock pilz-industrial-motion-testutils pythonPackages.coverage pythonPackages.docopt ];
  propagatedBuildInputs = [ pythonPackages.psutil pilz-msgs moveit-commander rospy tf-conversions tf pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
