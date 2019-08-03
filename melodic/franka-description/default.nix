
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-franka-description";
  version = "0.6.0-r1";

  src = fetchurl {
    url = https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_description/0.6.0-1.tar.gz;
    sha256 = "2219c2f91c728564ad20606258a024b4e8523f0c1599017c20ac9a1c3a1354bb";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_description contains URDF files and meshes of Franka Emika robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
