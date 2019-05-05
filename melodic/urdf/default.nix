
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, catkin, rosconsole-bridge, tinyxml, urdf-parser-plugin, urdfdom, rostest, urdfdom-headers, tinyxml-2, roscpp }:
buildRosPackage {
  pname = "ros-melodic-urdf";
  version = "1.13.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf-release/archive/release/melodic/urdf/1.13.1-0.tar.gz;
    sha256 = "2d16536bc8a59e01339b034539828f411245a3b170abc65d8e1f99f1305ae4f0";
  };

  buildInputs = [ cmake-modules pluginlib rosconsole-bridge tinyxml urdf-parser-plugin urdfdom urdfdom-headers tinyxml-2 roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib rosconsole-bridge tinyxml urdfdom urdfdom-headers tinyxml-2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
