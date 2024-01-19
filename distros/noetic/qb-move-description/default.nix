
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-move-description";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move_description/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "df7cca13c9ed38c67c788529d82208b353f32dcfc5017c9a11c77efe61039b97";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
