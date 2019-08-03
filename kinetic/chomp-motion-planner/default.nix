
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-chomp-motion-planner";
  version = "0.9.17-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/chomp_motion_planner/0.9.17-1.tar.gz;
    sha256 = "0c24465ac6123e9c63cb9fb574bc129b798d5ba5d49b30cea45d87792f5785ff";
  };

  buildInputs = [ roscpp moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
