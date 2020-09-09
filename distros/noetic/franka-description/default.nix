
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-franka-description";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_description/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "598e3ac933e094c70efc6d6aa40f0e5be9d748d424f521d981558b7ff2ce08a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_description contains URDF files and meshes of Franka Emika robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
