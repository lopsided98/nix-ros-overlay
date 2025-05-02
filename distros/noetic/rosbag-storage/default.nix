
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, gpgme, openssl, pluginlib, roscpp-serialization, roscpp-traits, roslz4, rostest, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosbag-storage";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosbag_storage/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "0fd887b1b625b44fa2e8e588fcaaea4455979decbe4c2869ee82eb9f85e08041";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest std-msgs ];
  propagatedBuildInputs = [ boost bzip2 console-bridge cpp-common gpgme openssl pluginlib roscpp-serialization roscpp-traits roslz4 rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
