
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gpgme, roscpp-serialization, pluginlib, catkin, bzip2, openssl, cpp-common, roscpp-traits, console-bridge, rostime, rostest, roslz4 }:
buildRosPackage {
  pname = "ros-melodic-rosbag-storage";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosbag_storage/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "670edf72be59ce0c5d2fce6df933f1c50895c8351f250f9d192164157c2fc46e";
  };

  buildType = "catkin";
  buildInputs = [ boost gpgme roscpp-serialization pluginlib bzip2 openssl cpp-common roscpp-traits console-bridge rostime rostest roslz4 ];
  propagatedBuildInputs = [ boost gpgme roscpp-serialization pluginlib bzip2 openssl cpp-common roscpp-traits console-bridge rostime roslz4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
