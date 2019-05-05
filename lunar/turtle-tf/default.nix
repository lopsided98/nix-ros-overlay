
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, catkin, roscpp, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-turtle-tf";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry_tutorials-release/archive/release/lunar/turtle_tf/0.2.2-0.tar.gz;
    sha256 = "3c364ad729baace41c92583ab4216a30f9a204ab8625ae942f31ad9d5edcc3fc";
  };

  buildInputs = [ turtlesim roscpp rospy std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ turtlesim roscpp rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_tf demonstrates how to write a tf broadcaster and listener with the turtlesim. The tutle_tf_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
