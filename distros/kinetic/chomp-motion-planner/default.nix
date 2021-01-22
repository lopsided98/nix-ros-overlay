
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-chomp-motion-planner";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/chomp_motion_planner/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "467b60dd67a5ed788fe3476b6b2b83ec4c2b5d99b2dff462d5b43139bf6a174a";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
