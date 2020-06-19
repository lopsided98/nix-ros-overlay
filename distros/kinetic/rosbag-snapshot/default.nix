
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, rosbag-snapshot-msgs, roscpp, rosgraph-msgs, roslint, rospy, rostest, rostopic, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-snapshot";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/kinetic/rosbag_snapshot/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "33a4255373aabdf3c8f2b6cfe618c5ffbaa40a0e5c3b339fa555ccf2e5ae68cf";
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
