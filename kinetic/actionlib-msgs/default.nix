
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/actionlib_msgs/1.12.7-0.tar.gz;
    sha256 = "94bf0ae2bfb725c95a5ab9d6a683edae7d35e7b2f8440dc95aaa153b01420992";
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
    #license = lib.licenses.BSD;
  };
}
