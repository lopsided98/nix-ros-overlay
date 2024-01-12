
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, move-base-msgs, nav-msgs, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pose-base-controller";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/pose_base_controller/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "b1849295bd12f2ab3acbaaa5878cf3c1b20fb08682e46bcaf7d7f6ec7388a93b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib geometry-msgs move-base-msgs nav-msgs roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node that provides the move_base action server interface, but instead of
    planning simply drives towards the target pose using a control-based
    approach.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
