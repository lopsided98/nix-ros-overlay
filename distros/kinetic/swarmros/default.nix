
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-swarmros";
  version = "0.3.1-r4";

  src = fetchurl {
    url = "https://github.com/amilankovich-slab/swarmros-release/archive/release/kinetic/swarmros/0.3.1-4.tar.gz";
    name = "0.3.1-4.tar.gz";
    sha256 = "31cac1fff0c41da3450230da45bbc752d537e0b4917991e1a46ff9def1453ae9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosconsole roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SwarmIO communications bridge for ROS'';
    license = with lib.licenses; [ "All rights reserved." ];
  };
}
