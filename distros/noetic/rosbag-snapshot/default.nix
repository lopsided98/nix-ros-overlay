
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, rosbag-snapshot-msgs, roscpp, rosgraph-msgs, roslint, rospy, rostest, rostopic, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosbag-snapshot";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/noetic/rosbag_snapshot/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "6faa6bf1c0a94506e8911affaf60852ce7a73c13d3431c94d449a1f895c04fe9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rospy rostest rostopic std-msgs ];
  propagatedBuildInputs = [ rosbag rosbag-snapshot-msgs roscpp rosgraph-msgs std-srvs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rosbag_snapshot package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
