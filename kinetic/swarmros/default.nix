
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roslib, roscpp, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-swarmros";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/amilankovich-slab/swarmros-release/archive/release/kinetic/swarmros/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "a1e94dfe9d1f24d4e0e69dbb3707ff9294d1f522ba0e50c71a13ba60f91e538c";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roslib rosconsole roscpp ];
  propagatedBuildInputs = [ std-msgs rosconsole roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SwarmIO communications bridge for ROS'';
    license = with lib.licenses; [ "All rights reserved." ];
  };
}
