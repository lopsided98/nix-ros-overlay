
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-octomap-msgs";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap_msgs-release/archive/release/kinetic/octomap_msgs/0.3.3-0.tar.gz;
    sha256 = "180382de6115d1c1afc3a009ee35804fe49795d2cd36c67418c68542d3b6f4c1";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides messages and serializations / conversion for the <a href="http://octomap.github.com">OctoMap library</a>.'';
    #license = lib.licenses.BSD;
  };
}
