
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, geometry-msgs, std-msgs, catkin, roscpp, tf2, rospy, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-turtle-tf2";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/kinetic/turtle_tf2/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "470185575edd830b92689f8cd433ba62767cfbcb3e7f237bfedb67a419619bbe";
  };

  buildType = "catkin";
  buildInputs = [ turtlesim geometry-msgs std-msgs tf2 roscpp rospy tf2-ros ];
  propagatedBuildInputs = [ turtlesim geometry-msgs std-msgs roscpp tf2 rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_tf2 demonstrates how to write a tf2 broadcaster and listener with the turtlesim. The tutle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
