
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, roscpp-serialization, roscpp-traits, roslz4, rostime }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-storage";
  version = "1.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag_storage/1.12.15-1.tar.gz";
    name = "1.12.15-1.tar.gz";
    sha256 = "c8fbd59ac45f6a9c36e370e860d2a673cebca389227377f8e84d0f5119e10311";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost bzip2 console-bridge cpp-common roscpp-serialization roscpp-traits roslz4 rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
