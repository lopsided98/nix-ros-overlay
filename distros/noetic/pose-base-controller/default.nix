
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, move-base-msgs, nav-msgs, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pose-base-controller";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/pose_base_controller/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "9ecad9f30d8a04f5e2f9efbe2edd14c86ee667ce64e5eaf7289f70f3829e46d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib geometry-msgs move-base-msgs nav-msgs roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node that provides the move_base action server interface, but instead of
    planning simply drives towards the target pose using a control-based
    approach.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
