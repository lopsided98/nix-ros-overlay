
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-fanuc-description";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_fanuc_description/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ef588d612b4238c3560a585ad84403d6b3095565aa5c88c9d0a809b0edd56f86";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fanuc Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
