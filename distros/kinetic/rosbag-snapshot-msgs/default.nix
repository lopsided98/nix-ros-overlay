
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-snapshot-msgs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/kinetic/rosbag_snapshot_msgs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d868758abb291d3c117e1d8a2e1ba4ec723dce497474678902813f025603ae6b";
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
