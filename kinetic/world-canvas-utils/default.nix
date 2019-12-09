
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, world-canvas-msgs, rospy, catkin, roslib }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-utils";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/world_canvas_libs-release/archive/release/kinetic/world_canvas_utils/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "9ae9e3df425e916619c9a8ce84443ff7d995be066268042fd1435d577f574e1f";
  };

  buildType = "catkin";
  buildInputs = [ rospy roslib world-canvas-msgs ];
  propagatedBuildInputs = [ rospy roslib world-canvas-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++/Python utilities library for the world canvas framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
