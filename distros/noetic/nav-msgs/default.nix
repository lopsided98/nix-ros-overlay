
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav-msgs";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/nav_msgs/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "8527fe2951a26d56308b7fb12c4fc4d2d4cce5fd76c60428cdea22945caafb76";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nav_msgs defines the common messages used to interact with the
    <a href="http://wiki.ros.org/navigation">navigation</a> stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
