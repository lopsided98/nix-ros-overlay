
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mk, catkin, rosbuild, dynamic-tf-publisher, jsk-interactive-marker, actionlib, rospy, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive/2.1.5-0.tar.gz;
    sha256 = "b002c8e6ee0921a4a57d6bef4a2baaf488d4116e2fbf3945380c416190db2768";
  };

  buildInputs = [ dynamic-tf-publisher jsk-interactive-marker visualization-msgs actionlib rospy mk rosbuild geometry-msgs ];
  propagatedBuildInputs = [ dynamic-tf-publisher jsk-interactive-marker actionlib rospy visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive'';
    #license = lib.licenses.BSD;
  };
}
