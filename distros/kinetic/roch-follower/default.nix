
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, dynamic-reconfigure, nodelet, roch-bringup, roch-msgs, roch-teleop, roscpp, topic-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-roch-follower";
  version = "2.0.12";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_follower/2.0.12-0.tar.gz";
    name = "2.0.12-0.tar.gz";
    sha256 = "53eebac8a0d8c2ad29cc9f861e70e5cc74a335a54723b1d1f7fb4b1c7e758102";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ depth-image-proc dynamic-reconfigure nodelet roch-bringup roch-msgs roch-teleop roscpp topic-tools visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Follower for the roch. Follows humans and robots around by following the centroid of a box points in front of the roch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
