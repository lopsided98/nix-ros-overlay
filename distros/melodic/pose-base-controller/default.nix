
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, move-base-msgs, nav-msgs, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-pose-base-controller";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/pose_base_controller/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "dc8b3aae19934ec7bd206c78fd089edde0404e43c832e576928cad3251510d81";
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
