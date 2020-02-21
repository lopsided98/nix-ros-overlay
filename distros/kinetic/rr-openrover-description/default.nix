
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-description";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_description/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "a0933fb1627cac569d42f08502ab53a1da391f222ee9659df7dea1e1a6f2e506";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_description package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
