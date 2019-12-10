
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, roscpp-serialization, roscpp-traits, roslz4, rostime }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-storage";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag_storage/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "c5ed28a7a0b47e1d42cff90d89cc271d9ac01dfe771f1503c8a88bdc31397c8f";
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
