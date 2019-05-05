
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, catkin, tf2-ros, tf2, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtle-tf2";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry_tutorials-release/archive/release/melodic/turtle_tf2/0.2.2-0.tar.gz;
    sha256 = "898be65b26bacc4c8ec117c9696b0506f18c33cce83c507442c3b4b239c64ada";
  };

  buildInputs = [ turtlesim tf2-ros tf2 rospy std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ turtlesim tf2-ros tf2 rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_tf2 demonstrates how to write a tf2 broadcaster and listener with the turtlesim. The tutle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
