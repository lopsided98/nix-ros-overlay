
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-base, catkin, rqt-robot-plugins, rviz, rqt-common-plugins }:
buildRosPackage {
  pname = "ros-lunar-viz";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/viz/1.3.2-0.tar.gz;
    sha256 = "ff9ece002c42e07b766195d0ed1aa1d417b7b6c43c49276608f5d3598ec630c7";
  };

  propagatedBuildInputs = [ rviz ros-base rqt-common-plugins rqt-robot-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    #license = lib.licenses.BSD;
  };
}
