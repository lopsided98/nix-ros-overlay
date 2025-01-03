
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, gpgme, openssl, pluginlib, roscpp-serialization, roscpp-traits, roslz4, rostest, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosbag-storage";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosbag_storage/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "7d7e8680d8da462023dd8fe31a8f76de2092be8131019134c136fd311f7a5b47";
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
