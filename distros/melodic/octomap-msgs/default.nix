
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-octomap-msgs";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_msgs-release/archive/release/melodic/octomap_msgs/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "9a17e5f2d6aa6d1e40c0e24b551b14439b03237e7913ee907d257f8bc9eedeea";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides messages and serializations / conversion for the <a href="http://octomap.github.io">OctoMap library</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
