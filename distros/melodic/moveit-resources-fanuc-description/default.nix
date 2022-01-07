
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-fanuc-description";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_fanuc_description/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "0a5d9ecb8548374826711eff22823fb86e6ca1b26e37d4f39a24874d7f541a11";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fanuc Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
