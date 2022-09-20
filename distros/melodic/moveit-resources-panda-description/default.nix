
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-panda-description";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_panda_description/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "ef4c4380e52b125a695d5dce52f4fb64157cc93870d1057399b67162cb6a8d1b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''panda Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
