
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-msgs";
  version = "2.5.18-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_msgs/2.5.18-1.tar.gz;
    sha256 = "ff8423a09d8dca2220e39b4a03f4c1b60011fca24ee7a40e90b388e45fa59dc5";
  };

  buildInputs = [ std-srvs trajectory-msgs sensor-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-srvs trajectory-msgs sensor-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
