
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, pr2-description, moveit-ros-move-group, robot-state-publisher, catkin }:
buildRosPackage {
  pname = "ros-melodic-pr2-moveit-config";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/melodic/pr2_moveit_config/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "543b47308b8307b9cc4a0c08fba6e1a90c8cd7040e0ef01ec5dc746cb3336194";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-move-group joint-state-publisher robot-state-publisher pr2-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the pr2 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
