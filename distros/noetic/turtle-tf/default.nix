
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, rospy, std-msgs, tf, turtlesim }:
buildRosPackage {
  pname = "ros-noetic-turtle-tf";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/noetic/turtle_tf/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "ee931e975a975648eeecfb48fa880dfaee3151bd043d491b857a986dc67a1637";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp rospy std-msgs tf turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "turtle_tf demonstrates how to write a tf broadcaster and listener with the turtlesim. The tutle_tf_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
