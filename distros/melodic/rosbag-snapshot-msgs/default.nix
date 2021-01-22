
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosbag-snapshot-msgs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosbag_snapshot-release/archive/release/melodic/rosbag_snapshot_msgs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "7dfcfda926b100b95b36509fd0e05e2988d23fcdde8f2c116802da67d96c4bc9";
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
