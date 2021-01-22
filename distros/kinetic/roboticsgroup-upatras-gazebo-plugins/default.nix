
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-roboticsgroup-upatras-gazebo-plugins";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/roboticsgroup/roboticsgroup_upatras_gazebo_plugins-release/archive/release/kinetic/roboticsgroup_upatras_gazebo_plugins/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "34a59aa747795ba511a8c9b79268f40bbc5bdb617287756e0683c10f0223ca1c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-toolbox gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of gazebo plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
