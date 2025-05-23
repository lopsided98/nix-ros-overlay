
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, rosbag-snapshot-msgs, roscpp, rosgraph-msgs, roslint, rospy, rostest, rostopic, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosbag-snapshot";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/noetic/rosbag_snapshot/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "b87bdf7575fdf9a7d53e938088e6aabfb5c4081500929830b26f5de83ff2e706";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rospy rostest rostopic std-msgs ];
  propagatedBuildInputs = [ rosbag rosbag-snapshot-msgs roscpp rosgraph-msgs std-srvs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The rosbag_snapshot package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
