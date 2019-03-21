
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-octomap-msgs";
  version = "0.3.3-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap_msgs-release/archive/release/melodic/octomap_msgs/0.3.3-1.tar.gz;
    sha256 = "416e70d1633904e7a65bfcd4e1665e5ff5e013d8a9d6a53329d2a449c2002304";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''This package provides messages and serializations / conversion for the <a href="http://octomap.github.com">OctoMap library</a>.'';
    #license = lib.licenses.BSD;
  };
}
