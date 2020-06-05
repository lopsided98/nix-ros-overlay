
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, gpgme, openssl, pluginlib, roscpp-serialization, roscpp-traits, roslz4, rostest, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosbag-storage";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosbag_storage/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "f6893769241c0595c8305adc19efcc34bed4ab895b3389be067337e7ed7d654e";
  };

  buildType = "catkin";
  buildInputs = [ rostest std-msgs ];
  propagatedBuildInputs = [ boost bzip2 console-bridge cpp-common gpgme openssl pluginlib roscpp-serialization roscpp-traits roslz4 rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
