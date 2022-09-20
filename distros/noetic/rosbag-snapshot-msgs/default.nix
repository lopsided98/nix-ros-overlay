
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosbag-snapshot-msgs";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/noetic/rosbag_snapshot_msgs/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "753504bb1f1d792be57ea96c9b060f32508b1005d6d7f18311b93e59d8ebca1c";
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
