
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-tf-publisher, actionlib, catkin, visualization-msgs, rospy, rosbuild, jsk-interactive-marker, mk }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "b002c8e6ee0921a4a57d6bef4a2baaf488d4116e2fbf3945380c416190db2768";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-tf-publisher actionlib visualization-msgs rospy rosbuild jsk-interactive-marker mk ];
  propagatedBuildInputs = [ geometry-msgs dynamic-tf-publisher actionlib visualization-msgs rospy jsk-interactive-marker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
