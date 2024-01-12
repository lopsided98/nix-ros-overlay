
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, xacro }:
buildRosPackage {
  pname = "ros-noetic-franka-description";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_description/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "0d2b8db69f7935f8bcbfeed662981c4542780106ba24121b13bc07702dd30a59";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_description contains URDF files and meshes of Franka Emika robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
