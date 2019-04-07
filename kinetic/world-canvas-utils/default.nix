
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, world-canvas-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-utils";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/world_canvas_libs-release/archive/release/kinetic/world_canvas_utils/0.2.0-0.tar.gz;
    sha256 = "9ae9e3df425e916619c9a8ce84443ff7d995be066268042fd1435d577f574e1f";
  };

  buildInputs = [ roslib world-canvas-msgs rospy ];
  propagatedBuildInputs = [ roslib world-canvas-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++/Python utilities library for the world canvas framework.'';
    #license = lib.licenses.BSD;
  };
}
