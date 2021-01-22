
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-std-msgs";
  version = "0.5.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/std_msgs-release/archive/release/kinetic/std_msgs/0.5.11-0.tar.gz";
    name = "0.5.11-0.tar.gz";
    sha256 = "64d894cdc86fba346136f61ee98b638f1cbc92eb8a58dadb74ee15bea21b9d70";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard ROS Messages including common message types representing primitive data types and other basic message constructs, such as multiarrays.
    For common, generic robot-specific message types, please see <a href="http://www.ros.org/wiki/common_msgs">common_msgs</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
