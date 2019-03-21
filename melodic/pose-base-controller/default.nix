
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, tf2-ros, move-base-msgs, nav-msgs, actionlib, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pose-base-controller";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/pose_base_controller/0.3.2-0.tar.gz;
    sha256 = "92fdd5e9e92e018a8ecbb45cf342f449ad33550922b7b9de82b27c54c131af48";
  };

  propagatedBuildInputs = [ move-base-msgs nav-msgs tf2-ros tf2-geometry-msgs actionlib roscpp geometry-msgs ];
  nativeBuildInputs = [ move-base-msgs nav-msgs tf2-ros tf2-geometry-msgs actionlib catkin roscpp geometry-msgs ];

  meta = {
    description = ''A node that provides the move_base action server interface, but instead of
    planning simply drives towards the target pose using a control-based
    approach.'';
    #license = lib.licenses.BSD;
  };
}
