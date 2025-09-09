
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosgraph-msgs";
  version = "1.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/noetic/rosgraph_msgs/1.11.4-1.tar.gz";
    name = "1.11.4-1.tar.gz";
    sha256 = "38418eecbfb37cf3f9906d8ed328b250dd5efef8cba6de64617a85f9be5faab9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages relating to the ROS Computation Graph. These are generally considered to be low-level messages that end users do not interact with.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
