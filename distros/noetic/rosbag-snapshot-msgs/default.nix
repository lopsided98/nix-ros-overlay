
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosbag-snapshot-msgs";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/noetic/rosbag_snapshot_msgs/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "10e1b53de691313253fd875cab7abec62dcba970b337eec2454930c6a57a0299";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service and message definitions for rosbag_snapshot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
