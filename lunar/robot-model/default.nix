
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, collada-urdf, catkin, urdf-parser-plugin, urdfdom, collada-parser, urdf, resource-retriever, joint-state-publisher }:
buildRosPackage {
  pname = "ros-lunar-robot-model";
  version = "1.12.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/robot_model-release/archive/release/lunar/robot_model/1.12.11-0.tar.gz;
    sha256 = "0c2b36a12518adfb90c4fa3a662ab3432e01f92a234b222e8bdea3ccbdfb0929";
  };

  propagatedBuildInputs = [ urdfdom kdl-parser collada-parser urdf resource-retriever collada-urdf joint-state-publisher urdf-parser-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<tt>robot_model</tt> contains packages for modeling various
    aspects of robot information, specified in the Xml Robot
    Description Format (URDF). The core package of this stack
    is <a href="http://ros.org/wiki/urdf">urdf</a>, which parses URDF files, and constructs an
    object model (C++) of the robot.'';
    #license = lib.licenses.BSD;
  };
}
