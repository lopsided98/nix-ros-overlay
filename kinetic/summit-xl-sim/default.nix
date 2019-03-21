
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, summit-xl-robot-control, catkin, summit-xl-control, summit-xl-sim-bringup, summit-xl-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-sim";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_xl_sim-release/archive/release/kinetic/summit_xl_sim/1.1.1-0.tar.gz;
    sha256 = "035b507fcc96909ce2110d9c3f4a1a1ee038e759d8f9bcd0febfb888e69b4b26";
  };

  propagatedBuildInputs = [ summit-xl-control summit-xl-robot-control summit-xl-sim-bringup summit-xl-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_xl_sim metapackage'';
    #license = lib.licenses.BSD;
  };
}
