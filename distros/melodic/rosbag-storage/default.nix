
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, catkin, console-bridge, cpp-common, gpgme, openssl, pluginlib, roscpp-serialization, roscpp-traits, roslz4, rostest, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosbag-storage";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosbag_storage/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "26772126a2f259a82eaf5e0b484c6508242dbf485476a1f14631a5ec67aa711d";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest std-msgs ];
  propagatedBuildInputs = [ boost bzip2 console-bridge cpp-common gpgme openssl pluginlib roscpp-serialization roscpp-traits roslz4 rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
