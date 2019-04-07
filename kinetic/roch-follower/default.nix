
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, depth-image-proc, roch-teleop, catkin, roch-msgs, nodelet, dynamic-reconfigure, topic-tools, visualization-msgs, roch-bringup, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-roch-follower";
  version = "2.0.12";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_follower/2.0.12-0.tar.gz;
    sha256 = "53eebac8a0d8c2ad29cc9f861e70e5cc74a335a54723b1d1f7fb4b1c7e758102";
  };

  buildInputs = [ roch-msgs depth-image-proc visualization-msgs dynamic-reconfigure nodelet roscpp ];
  propagatedBuildInputs = [ depth-image-proc roch-teleop roscpp roch-msgs nodelet dynamic-reconfigure topic-tools roch-bringup visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Follower for the roch. Follows humans and robots around by following the centroid of a box points in front of the roch.'';
    #license = lib.licenses.BSD;
  };
}
