
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, genmsg, geometry-msgs, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-mapnav-msgs";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_mapnav_msgs-release/-/archive/release/kinetic/homer_mapnav_msgs/0.1.53-0/homer_mapnav_msgs-release-release-kinetic-homer_mapnav_msgs-0.1.53-0.tar.gz";
    name = "homer_mapnav_msgs-release-release-kinetic-homer_mapnav_msgs-0.1.53-0.tar.gz";
    sha256 = "e932a8d3c526d1ef820a73bdfb75d244802153e2eaccae357803a8c773a82e7e";
  };

  buildType = "catkin";
  buildInputs = [ genmsg message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''homer_mapnav_msgs contains the messages used for mapping and navigation'';
    license = with lib.licenses; [ gpl3 ];
  };
}
