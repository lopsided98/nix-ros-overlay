
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, roscpp-serialization, roscpp-traits, roslz4, rostime }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-storage";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag_storage/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "376c9d66af3591aa514a400c7a53b2197bafcc41be754e350d951359145b69f3";
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
