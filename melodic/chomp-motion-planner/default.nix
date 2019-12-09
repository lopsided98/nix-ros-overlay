
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-chomp-motion-planner";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/chomp_motion_planner/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3bb6111f5f09f08aab5941a388925b99ab2506940210739a9b80e2ac4578079d";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
