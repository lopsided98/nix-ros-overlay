
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ackermann-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/ackermann_msgs-release/archive/release/kinetic/ackermann_msgs/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "18040a0cd20f0fcd40959dacad2fc3f9f72371e3426fe33f4b5fa18f2e53306e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using Ackermann steering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
