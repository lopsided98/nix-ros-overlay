
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ackermann-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/ackermann_msgs-release/archive/release/kinetic/ackermann_msgs/1.0.1-0.tar.gz;
    sha256 = "18040a0cd20f0fcd40959dacad2fc3f9f72371e3426fe33f4b5fa18f2e53306e";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''ROS messages for robots using Ackermann steering.'';
    #license = lib.licenses.BSD;
  };
}
