
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, roscpp-serialization, roscpp-traits, roslz4, rostime }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-storage";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag_storage/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "cc0ba8c6a13b541381fbf8d9ae6c2e9a9a55b593831891edb6bcf9068d9b5ddc";
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
