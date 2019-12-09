
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, geometry-msgs, std-msgs, tf, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-turtle-tf";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/kinetic/turtle_tf/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "e5c783340ea80801232163ccb2fa8f949ba900901c97767a3d728a9e7bac15df";
  };

  buildType = "catkin";
  buildInputs = [ turtlesim geometry-msgs std-msgs tf roscpp rospy ];
  propagatedBuildInputs = [ turtlesim geometry-msgs std-msgs tf roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_tf demonstrates how to write a tf broadcaster and listener with the turtlesim. The tutle_tf_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
