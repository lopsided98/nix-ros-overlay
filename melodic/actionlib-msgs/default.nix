
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-actionlib-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/actionlib_msgs/1.12.7-0.tar.gz;
    sha256 = "0ad19d4f8698df04a22979c4b64f21991696c55877c952dc592e92ffb82122f0";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime ];
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
