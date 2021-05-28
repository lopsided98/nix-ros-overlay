
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion-planner-testutils";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/pilz_industrial_motion_planner_testutils/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "2900ea942365c62557555645d9b8a7857c76b8ca2642fc551d283735fdaaa8a2";
  };

  buildType = "catkin";
  buildInputs = [ tf2-eigen ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
