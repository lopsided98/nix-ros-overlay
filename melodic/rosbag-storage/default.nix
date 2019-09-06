
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslz4, bzip2, pluginlib, cpp-common, boost, roscpp-traits, catkin, gpgme, rostest, console-bridge, roscpp-serialization, openssl, rostime }:
buildRosPackage {
  pname = "ros-melodic-rosbag-storage";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosbag_storage/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "670edf72be59ce0c5d2fce6df933f1c50895c8351f250f9d192164157c2fc46e";
  };

  buildType = "catkin";
  buildInputs = [ roslz4 bzip2 boost pluginlib cpp-common roscpp-traits gpgme rostest console-bridge roscpp-serialization openssl rostime ];
  propagatedBuildInputs = [ roslz4 boost pluginlib cpp-common roscpp-traits rostime gpgme console-bridge roscpp-serialization openssl bzip2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
