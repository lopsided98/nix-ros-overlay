
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, openscenegraph, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-osg-utils";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/kinetic/osg_utils/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "b373910f54cfa60107bc4faf65ef211c4ffd45ebed37bdf539d9b6158cb96266";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs openscenegraph roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''osg_utils is a library that contains some classes that may be useful in ROS-OSG applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
