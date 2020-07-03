
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, rosbag-snapshot-msgs, roscpp, rosgraph-msgs, roslint, rospy, rostest, rostopic, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosbag-snapshot";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/noetic/rosbag_snapshot/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5cc66d1435efb3483a207ddb125ed0a07b8903f719ca415c557ffc0caa136e8e";
  };

  buildType = "catkin";
  checkInputs = [ roslint rospy rostest rostopic std-msgs ];
  propagatedBuildInputs = [ rosbag rosbag-snapshot-msgs roscpp rosgraph-msgs std-srvs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rosbag_snapshot package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
