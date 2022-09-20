
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-roboticsgroup-upatras-gazebo-plugins";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/roboticsgroup/roboticsgroup_upatras_gazebo_plugins-release/archive/release/melodic/roboticsgroup_upatras_gazebo_plugins/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "e4f47fc8d72fdb832caca41aebd503cb32b4d8420fcb1f3d3a9725f98eb42fb0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of gazebo plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
