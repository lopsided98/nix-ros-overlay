
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib-msgs";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/actionlib_msgs/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "b636ae60698ff7f38a474d9420430eb265b84549757a6a420baea4006eb94fc7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_msgs defines the common messages to interact with an
     action server and an action client.  For full documentation of
     the actionlib API see
     the <a href="http://wiki.ros.org/actionlib">actionlib</a>
     package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
