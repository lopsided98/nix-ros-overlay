
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-octomap-msgs";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap_msgs-release/archive/release/lunar/octomap_msgs/0.3.3-0.tar.gz;
    sha256 = "7b38d036f7b47aa407a8ac06dc5eb9ee6c2895ed442c7ced5b9cf76edbc1359d";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides messages and serializations / conversion for the <a href="http://octomap.github.com">OctoMap library</a>.'';
    #license = lib.licenses.BSD;
  };
}
