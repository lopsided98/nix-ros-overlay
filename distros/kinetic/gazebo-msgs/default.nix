
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-msgs";
  version = "2.5.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_msgs/2.5.20-1.tar.gz";
    name = "2.5.20-1.tar.gz";
    sha256 = "3981052940f277bea77117b36deefe7f963483afc34820f75cf2a8abc781f24e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
