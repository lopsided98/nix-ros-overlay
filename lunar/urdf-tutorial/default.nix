
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, robot-state-publisher, roslaunch, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-lunar-urdf-tutorial";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf_tutorial-release/archive/release/lunar/urdf_tutorial/0.3.0-0.tar.gz;
    sha256 = "891c634f5f4385043671dff8090ed67a1a9cb4bbc3a45b54492e5efe1ffddb01";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ rviz joint-state-publisher xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a number of URDF tutorials.'';
    #license = lib.licenses.BSD;
  };
}
