
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, roscpp }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo-plugins";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo_plugins/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "43b9fe66780c1dc7ecb1fc3058e46100d64d4cff5bd80de8ee2ca8712332b2ba";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-dev roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for simulating Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
