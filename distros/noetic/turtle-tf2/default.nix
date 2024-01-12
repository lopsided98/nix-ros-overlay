
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, rospy, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-noetic-turtle-tf2";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/noetic/turtle_tf2/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "540a3c37186add6323b4c91fe7baff1671158b1b70edd2ed7f57e3903265e362";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp rospy std-msgs tf2 tf2-geometry-msgs tf2-ros turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_tf2 demonstrates how to write a tf2 broadcaster and listener with the turtlesim. The tutle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
