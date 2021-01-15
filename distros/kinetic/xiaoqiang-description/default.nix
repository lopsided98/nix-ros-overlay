
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-description";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_description/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "d9f7dc0151808ef7f6e441d46f770cacfa3e3f74a38dfe3fbabddc4e74e3fe2d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the xiaoqiang for simulation and visualization'';
    license = with lib.licenses; [ mit ];
  };
}
