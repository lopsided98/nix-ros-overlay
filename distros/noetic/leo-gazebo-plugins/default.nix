
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo-plugins";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo_plugins/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "b3cbb9d2f429a1bb41bbe819cc8e3bba898f48a03efb63618720ad6aa9dbef79";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-dev gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for simulating Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
