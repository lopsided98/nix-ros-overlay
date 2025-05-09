
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib-msgs";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/actionlib_msgs/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "7058fb769ce2f42e7c39910e5f6b431956ea5320cd3f8497d192fe63c99bb2b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "actionlib_msgs defines the common messages to interact with an
     action server and an action client.  For full documentation of
     the actionlib API see
     the <a href=\"http://wiki.ros.org/actionlib\">actionlib</a>
     package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
