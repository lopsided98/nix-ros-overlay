
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, move-base-msgs, nav-msgs, actionlib, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pose-base-controller";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/pose_base_controller/0.2.1-0.tar.gz;
    sha256 = "d16f78c356b5d8ecf8d301a74d46cedb4fc198af7091d56b28c91f37c22c7b63";
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
