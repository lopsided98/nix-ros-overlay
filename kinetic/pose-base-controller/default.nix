
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, move-base-msgs, nav-msgs, actionlib, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pose-base-controller";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/pose_base_controller/0.2.1-0.tar.gz;
    sha256 = "96e5a66d4257e8485e31149c922a30b674402a42a4c6260122358573e3bb3f39";
  };

  buildInputs = [ move-base-msgs nav-msgs actionlib geometry-msgs tf roscpp ];
  propagatedBuildInputs = [ move-base-msgs nav-msgs actionlib geometry-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node that provides the move_base action server interface, but instead of
    planning simply drives towards the target pose using a control-based
    approach.'';
    #license = lib.licenses.BSD;
  };
}
