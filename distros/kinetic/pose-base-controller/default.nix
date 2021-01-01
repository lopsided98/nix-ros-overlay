
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, move-base-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-pose-base-controller";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/pose_base_controller/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "a8f228234564c4787b1be0512c73f18d255c4951c2320da260489debbac232be";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib geometry-msgs move-base-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node that provides the move_base action server interface, but instead of
    planning simply drives towards the target pose using a control-based
    approach.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
