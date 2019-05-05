
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-franka-description";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_description/0.6.0-0.tar.gz;
    sha256 = "06d66f1cfccb5d012babe67314e1f34870c7f272a15b6d14c83701f514f0e18f";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_description contains URDF files and meshes of Franka Emika robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
