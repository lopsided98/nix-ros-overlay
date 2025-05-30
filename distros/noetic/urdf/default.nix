
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pluginlib, rosconsole-bridge, roscpp, rostest, tinyxml, tinyxml-2, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-urdf";
  version = "1.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf-release/archive/release/noetic/urdf/1.13.4-1.tar.gz";
    name = "1.13.4-1.tar.gz";
    sha256 = "e4e603c6c47f08c4986c6d1555e78f9889135228f6bdab319347fdf84537b290";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules urdf-parser-plugin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib rosconsole-bridge roscpp tinyxml tinyxml-2 urdfdom urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
