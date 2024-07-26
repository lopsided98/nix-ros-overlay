
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-chomp-motion-planner";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/chomp_motion_planner/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "a489a311e9b80b690de6299188c9a90a76f1350a7f7c391b3ef024215eb50e2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "chomp_motion_planner";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
