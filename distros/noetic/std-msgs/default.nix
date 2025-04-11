
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-std-msgs";
  version = "0.5.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/std_msgs-release/archive/release/noetic/std_msgs/0.5.14-1.tar.gz";
    name = "0.5.14-1.tar.gz";
    sha256 = "5b3e8cd3e4cad78c208160849b0781770e0b138a542e396bda1e92666f5c2905";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Standard ROS Messages including common message types representing primitive data types and other basic message constructs, such as multiarrays.
    For common, generic robot-specific message types, please see <a href=\"http://www.ros.org/wiki/common_msgs\">common_msgs</a>.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
