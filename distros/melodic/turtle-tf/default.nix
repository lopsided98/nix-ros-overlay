
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, rospy, std-msgs, tf, turtlesim }:
buildRosPackage {
  pname = "ros-melodic-turtle-tf";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/melodic/turtle_tf/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "182947fcfff5ec44a27e343306a78fd488fbcaff6d8ca894ed0646846293f02d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp rospy std-msgs tf turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_tf demonstrates how to write a tf broadcaster and listener with the turtlesim. The tutle_tf_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
