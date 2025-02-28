
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-msgs";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_msgs/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "4bfea68e935ed7135d680652da21318b065faf19d01b2dbe5883de8373668a73";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Message and service data structures for interacting with Gazebo from ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
