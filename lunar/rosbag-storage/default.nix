
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslz4, cpp-common, boost, roscpp-traits, catkin, rostime, console-bridge, roscpp-serialization, bzip2 }:
buildRosPackage {
  pname = "ros-lunar-rosbag-storage";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosbag_storage/1.13.7-0.tar.gz;
    sha256 = "60d80bb3d16e49bb655982c2bd2fe2e390a5eabafc52062b598f1e7d18e74b9c";
  };

  buildInputs = [ roslz4 bzip2 cpp-common boost roscpp-traits console-bridge roscpp-serialization rostime ];
  propagatedBuildInputs = [ roslz4 bzip2 cpp-common boost roscpp-traits console-bridge roscpp-serialization rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
