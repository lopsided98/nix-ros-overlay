
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, collada-urdf, urdf, resource-retriever, urdfdom, catkin, collada-parser, urdf-parser-plugin, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-robot-model";
  version = "1.12.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_model-release/archive/release/kinetic/robot_model/1.12.11-0.tar.gz";
    name = "1.12.11-0.tar.gz";
    sha256 = "520f64793de633ac49e6457697e098a40a2d2702a7d04123df1495c84356e051";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher collada-urdf urdf resource-retriever urdfdom collada-parser urdf-parser-plugin kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<tt>robot_model</tt> contains packages for modeling various
    aspects of robot information, specified in the Xml Robot
    Description Format (URDF). The core package of this stack
    is <a href="http://ros.org/wiki/urdf">urdf</a>, which parses URDF files, and constructs an
    object model (C++) of the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
