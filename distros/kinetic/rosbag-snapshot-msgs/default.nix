
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-snapshot-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/kinetic/rosbag_snapshot_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c69e51f659b77b8e4f05805e7e7fc5444e55b6dffb12470aaeb1da58165c0333";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service and message definitions for rosbag_snapshot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
