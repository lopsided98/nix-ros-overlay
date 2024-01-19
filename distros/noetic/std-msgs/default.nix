
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-std-msgs";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/std_msgs-release/archive/release/noetic/std_msgs/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "3739ca3b5da2427b549056936fb36dddc712e910aeb2b3c5afaa61ab0df48bf3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard ROS Messages including common message types representing primitive data types and other basic message constructs, such as multiarrays.
    For common, generic robot-specific message types, please see <a href="http://www.ros.org/wiki/common_msgs">common_msgs</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
